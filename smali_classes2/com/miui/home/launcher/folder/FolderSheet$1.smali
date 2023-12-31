.class Lcom/miui/home/launcher/folder/FolderSheet$1;
.super Ljava/lang/Object;
.source "FolderSheet.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderSheet;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderSheet;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet$1;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet$1;->this$0:Lcom/miui/home/launcher/folder/FolderSheet;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->access$000(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
