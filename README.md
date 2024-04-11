# Linux-server-monitoring-personnal-tools
Personnal automated monitoring tools for linux server.
<br>
## Features
- Monitor system resources such as CPU, memory, disk usage, and network activity.
- Generate reports on system uptime, service status, and user activity.
- Automate alerts for critical system events.
- Easily customizable and extensible to suit your specific monitoring needs.

## Usage

1. Clone the repository to your Linux server:

    ```bash
    git clone https://github.com/AyraStelmaszewski/server-monitoring-tools.git
    ```

2. Navigate to the cloned directory:

    ```bash
    cd monitoring
    ```

3. Run the desired monitoring script:

    ```bash
    ./monitoring-script.sh
    ```
4. Automate a save from the report each hour in a CSV file:

    ```bash
   contrab -e
    ```

    ```bash
    0 * * * * /bin/bash /home/ayra/monitoring/backup.sh
    ```
    <br>
## Demonstration 

<img width="741" alt="image" src="https://github.com/AyraStelmaszewski/Linux-server-monitoring-tools/assets/68444023/e0d0ee01-dcbd-44fe-99a5-c6b07e3857f2">
<img width="737" alt="image" src="https://github.com/AyraStelmaszewski/Linux-server-monitoring-tools/assets/68444023/ed24a1d0-dffc-4481-96cb-27342be321de">
<img width="729" alt="image" src="https://github.com/AyraStelmaszewski/Linux-server-monitoring-tools/assets/68444023/50eef5db-ce89-4ae4-a303-551325f026e4">
<img width="729" alt="image" src="https://github.com/AyraStelmaszewski/Linux-server-monitoring-tools/assets/68444023/04b703fd-71de-49cd-b43d-60c17a278dc0">
<img width="738" alt="image" src="https://github.com/AyraStelmaszewski/Linux-server-monitoring-tools/assets/68444023/411853ac-8323-4d2a-8b90-36d3c6eab45f">


