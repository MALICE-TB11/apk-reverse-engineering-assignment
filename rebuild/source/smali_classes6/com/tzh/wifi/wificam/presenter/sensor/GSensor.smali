.class public Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;
.super Ljava/lang/Object;
.source "GSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private isInitialized:Z

.field logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mContext:Landroid/content/Context;

.field private mSensor:Landroid/hardware/Sensor;

.field private sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 17
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mSensor:Landroid/hardware/Sensor;

    .line 18
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    .line 19
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    .line 21
    const-class v0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 24
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mContext:Landroid/content/Context;

    .line 26
    const-string p1, "GSensor created, sensor initialization delayed until privacy policy accepted"

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 17
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mSensor:Landroid/hardware/Sensor;

    .line 18
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    .line 19
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    .line 21
    const-class v0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 30
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    .line 33
    const-string p1, "GSensor created with listener, sensor initialization delayed until privacy policy accepted"

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initSensor()V
    .locals 3

    .line 40
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "Sensor already initialized"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "Context is null, cannot initialize sensor"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v2, "gravity not support"

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v2, "Sensor initialized successfully"

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 57
    :goto_0
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 97
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    sget v2, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 100
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    sget v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    div-float/2addr p1, v2

    float-to-int p1, p1

    .line 102
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "x=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   y=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1, p1, v0}, Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;->onGSensorChange(II)V

    :cond_0
    return-void
.end method

.method public register(Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;)Z
    .locals 2

    .line 62
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    .line 65
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "Sensor not initialized, cannot register listener"

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return v0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    return p1

    .line 71
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "SensorManager or Sensor is null, cannot register listener"

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public unregister()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorChange:Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;

    .line 81
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "Cannot unregister sensor - not properly initialized"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
