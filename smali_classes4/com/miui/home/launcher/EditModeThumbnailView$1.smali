.class Lcom/miui/home/launcher/EditModeThumbnailView$1;
.super Lcom/miui/home/launcher/common/AnimationListenerAdapter;
.source "EditModeThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/EditModeThumbnailView;->getExitAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/EditModeThumbnailView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/EditModeThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditModeThumbnailView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditModeThumbnailView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->onHideComplete()V

    return-void
.end method
