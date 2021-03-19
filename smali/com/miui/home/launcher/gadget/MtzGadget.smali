.class public Lcom/miui/home/launcher/gadget/MtzGadget;
.super Lcom/miui/home/launcher/gadget/AdvancedGadget;
.source "MtzGadget.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/ColorUpdatable;


# static fields
.field private static ROOT_TAG:Ljava/lang/String; = "gadget"


# instance fields
.field private mAwesomeView:Landroid/view/View;

.field private mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

.field private mElementContext:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsPlayer:Z

.field private mRoot:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)V
    .locals 3

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v0

    const v1, 0x7f0d002c

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f100195

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "MtzGadget"

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gadget load error:mission file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getCategoryId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsPlayer:Z

    .line 44
    invoke-virtual {p2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content/"

    invoke-static {p1, p2, v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/MtzGadget;->setWillNotDraw(Z)V

    goto :goto_1

    .line 48
    :cond_2
    invoke-static {p1, v1, p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "MtzGadget"

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gadget load error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_1
    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lcom/miui/home/launcher/gadget/MtzGadget$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/gadget/MtzGadget$1;-><init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V

    invoke-direct {p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MtzGadget;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mIsPlayer:Z

    return p0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/MtzGadget;->cleanUpView(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 176
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isInvalidateGadget()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->getManifestRoot(Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/gadget/MtzGadget;->ROOT_TAG:Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->createScreenElementRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setScaleByDensity(Ljava/lang/Object;Z)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setDefaultFramerate(Ljava/lang/Object;F)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->load(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 110
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-nez v0, :cond_4

    return-void

    .line 126
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/gadget/MtzGadget$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/MtzGadget$2;-><init>(Lcom/miui/home/launcher/gadget/MtzGadget;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mCommandListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->createAwesomeGadgetView(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/gadget/MtzGadget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->updateColor()V

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

    .line 66
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->onPause()V

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 77
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->onCommand(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mAwesomeView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->onPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MtzGadget;->updateColor()V

    return-void
.end method

.method public updateColor()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/MtzGadget;->mElementContext:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->updateGadgetColorByWallpaper(Lcom/miui/home/launcher/gadget/Gadget;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
