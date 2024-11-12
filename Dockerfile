# Use the official OSMnx image as the base
FROM gboeing/osmnx

# Copy your requirements.txt file into the container
COPY requirements.txt /tmp/requirements.txt

# Install the additional Python packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt