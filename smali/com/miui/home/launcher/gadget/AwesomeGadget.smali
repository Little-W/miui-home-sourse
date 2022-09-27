.class public Lcom/miui/home/launcher/gadget/AwesomeGadget;
.super Lcom/miui/home/launcher/gadget/AdvancedGadget;
.source "AwesomeGadget.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "AwesomeGadget"

.field protected static ROOT_TAG:Ljava/lang/String; = "gadget"


# instance fields
.field protected mAwesomeView:Landroid/view/View;

.field protected mElementContext:Ljava/lang/Object;

.field private mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

.field protected mRoot:Ljava/lang/Object;

.field protected mUpdateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/AwesomeGadget$1;-><init>(Lcom/miui/home/launcher/gadget/AwesomeGadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public cleanUpAndKeepResource()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->clearUpView(Landroid/view/View;Z)V

    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e8

    :goto_1
    return v0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Ljava/lang/Object;

    return-void
.end method

.method public initConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->initConfig(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/gadget/AwesomeGadget;->ROOT_TAG:Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "update_interval"

    .line 139
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const v0, 0xea60

    .line 141
    :try_start_2
    iput v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mUpdateInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad root tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_4

    return-void

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createGlobalAdvancedView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 160
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onEditDisable()V
    .locals 0

    return-void
.end method

.method public onEditNormal()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 64
    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->requestUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public reinit()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->initView(Landroid/view/View;)V

    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mElementContext:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mAwesomeView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/AwesomeGadget;->mRoot:Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->requestUpdate(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
