.class Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;
.super Ljava/lang/Object;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingFinishMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LoadingFinishMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 640
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100387

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/FolderCling;->access$202(Lcom/miui/home/launcher/FolderCling;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 641
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->initLoadingAnimationContents()V

    return-void
.end method
