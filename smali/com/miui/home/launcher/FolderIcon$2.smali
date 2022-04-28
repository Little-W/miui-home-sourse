.class Lcom/miui/home/launcher/FolderIcon$2;
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

    .line 138
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$2;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$2;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$100(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$2;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderIcon;->access$200(Lcom/miui/home/launcher/FolderIcon;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
