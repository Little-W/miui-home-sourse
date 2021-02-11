.class Lcom/miui/home/launcher/Folder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Folder;
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

    .line 236
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 250
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1100(Lcom/miui/home/launcher/Folder;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$1200(Lcom/miui/home/launcher/Folder;)V

    .line 255
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderGridView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$600(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$500(Lcom/miui/home/launcher/Folder;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$402(Lcom/miui/home/launcher/Folder;F)F

    .line 240
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$600(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$700(Lcom/miui/home/launcher/Folder;Z)V

    .line 242
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$800(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$900(Lcom/miui/home/launcher/Folder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$1000(Lcom/miui/home/launcher/Folder;F)V

    .line 244
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$4;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Folder;->setupOutOfPreviewContent(F)V

    :cond_0
    return-void
.end method
