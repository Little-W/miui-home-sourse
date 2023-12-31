.class Lcom/miui/home/launcher/Folder$4;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p0}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1

    .line 370
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    :cond_1
    return-void
.end method
