.class Lcom/miui/home/launcher/FolderIcon$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$10;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$10;->this$0:Lcom/miui/home/launcher/FolderIcon;

    new-instance v0, Lcom/miui/home/launcher/FolderIcon$10$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$10$1;-><init>(Lcom/miui/home/launcher/FolderIcon$10;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
