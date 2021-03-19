.class public Lcom/miui/launcher/views/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "gadget_clock"

.field public static final MINUTE_IN_MILLIS:I = 0xea60

.field private static final ROOT_TAG:Ljava/lang/String; = "clock"

.field private static final UPDATE_INTERVAL_TAG:Ljava/lang/String; = "update_interval"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mTargetDensity:I

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/launcher/views/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/miui/launcher/views/AwesomeView;->postInvalidate()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/miui/launcher/views/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lmiui/maml/ScreenContext;)Z
    .locals 4

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "clock"

    .line 61
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    new-instance v2, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v2, p1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v2, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 65
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 66
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 70
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v2}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiui/maml/ScreenElementRoot;->attachToRenderThread(Lmiui/maml/RenderThread;)V

    .line 71
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->selfInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "update_interval"

    .line 73
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/launcher/views/AwesomeView;->mUpdateInterval:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const p1, 0xea60

    .line 75
    :try_start_2
    iput p1, p0, Lcom/miui/launcher/views/AwesomeView;->mUpdateInterval:I

    :goto_0
    return v2

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad root tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "gadget_clock"

    .line 48
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "gadget_clock"

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 86
    iget-object p1, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    const-string v0, "view_width"

    .line 87
    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int/2addr p4, p2

    int-to-double v1, p4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object p2, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 88
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result p2

    float-to-double v3, p2

    div-double/2addr v1, v3

    .line 87
    invoke-static {v0, p1, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    const-string p1, "view_height"

    .line 89
    iget-object p2, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int/2addr p5, p3

    int-to-double p3, p5

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    iget-object p5, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 90
    invoke-virtual {p5}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result p5

    float-to-double v0, p5

    div-double/2addr p3, v0

    .line 89
    invoke-static {p1, p2, p3, p4}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    :cond_0
    return-void
.end method

.method setTargetDensity(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/miui/launcher/views/AwesomeView;->mTargetDensity:I

    return-void
.end method

.method public tick(J)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/launcher/views/AwesomeView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    :cond_0
    return-void
.end method
