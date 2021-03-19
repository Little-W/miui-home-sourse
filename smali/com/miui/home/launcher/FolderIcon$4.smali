.class Lcom/miui/home/launcher/FolderIcon$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->onFinishInflate()V
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

    .line 154
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$4;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$4;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$000(Lcom/miui/home/launcher/FolderIcon;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$4;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    return-void
.end method
