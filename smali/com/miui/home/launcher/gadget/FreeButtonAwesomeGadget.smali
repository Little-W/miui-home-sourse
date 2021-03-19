.class public Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;
.super Lcom/miui/home/launcher/gadget/AwesomeGadget;
.source "FreeButtonAwesomeGadget.java"

# interfaces
.implements Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;


# instance fields
.field private mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

.field private mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/AwesomeGadget;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget$1;-><init>(Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    const-string p1, "free_gadget"

    .line 33
    sput-object p1, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->ROOT_TAG:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mElementContext:Ljava/lang/Object;

    .line 36
    iput-object p3, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 37
    iput-object p4, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;)Lcom/miui/home/launcher/upsidescene/FreeButtonState;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .line 42
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->onCreate()V

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mRoot:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-object v1, v0

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Landroid/view/View;Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mFreeButtonState:Lcom/miui/home/launcher/upsidescene/FreeButtonState;

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mRoot:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mListener:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    :cond_0
    return-void
.end method

.method public onStateUpdated(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string p2, "normal"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mRoot:Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mElementContext:Ljava/lang/Object;

    const-string v0, "FreeStyle_FreeButtonState"

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    const-string p2, "open"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mRoot:Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->mElementContext:Ljava/lang/Object;

    const-string v0, "FreeStyle_FreeButtonState"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/launcher/utils/MamlUtils;->updateVariable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;D)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
