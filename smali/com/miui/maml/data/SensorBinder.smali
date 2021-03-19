.class public Lcom/miui/maml/data/SensorBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static final THRESHOLD:F = 0.1f


# instance fields
.field private mEnable:Z

.field private mPaused:Z

.field private mRate:I

.field private mRegistered:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mThreshold:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    const-string p2, "type"

    .line 42
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    const-string p2, "rate"

    const/4 v0, 0x3

    .line 43
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    const-string p2, "threshold"

    const v0, 0x3dcccccd    # 0.1f

    .line 44
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    const-string p2, "enable"

    .line 45
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 49
    :cond_0
    new-instance p2, Lcom/miui/maml/data/SensorBinder$1;

    invoke-direct {p2, p0}, Lcom/miui/maml/data/SensorBinder$1;-><init>(Lcom/miui/maml/data/SensorBinder;)V

    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/data/SensorBinder;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    return p0
.end method

.method private registerListener()V
    .locals 5

    .line 111
    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/maml/data/SensorBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    iget v3, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    iget-object v4, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/maml/data/MamlSensorManager;->registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/MamlSensorManager;->unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 78
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    return-void
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;
    .locals 2

    .line 122
    new-instance v0, Lcom/miui/maml/data/SensorBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/SensorBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SensorBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 90
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 97
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method

.method public turnOffSensorBinder()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 102
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public turnOnSensorBinder()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 107
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method
