.class Lcom/miui/home/launcher/EditingEntryThumbnailView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "EditingEntryThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/EditingEntryThumbnailView;->lambda$hideWithFolmeAnim$126(Lmiuix/animation/IFolme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

.field final synthetic val$iFolme:Lmiuix/animation/IFolme;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/EditingEntryThumbnailView;Lmiuix/animation/IFolme;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    iput-object p2, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->val$iFolme:Lmiuix/animation/IFolme;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 227
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-static {p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->val$iFolme:Lmiuix/animation/IFolme;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-static {p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->access$000(Lcom/miui/home/launcher/EditingEntryThumbnailView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/miui/home/launcher/EditingEntryThumbnailView$1;->this$0:Lcom/miui/home/launcher/EditingEntryThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/EditingEntryThumbnailView;->onHideComplete()V

    :cond_0
    return-void
.end method
