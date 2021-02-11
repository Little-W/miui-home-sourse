.class Lcom/miui/home/launcher/Folder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


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

    .line 213
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$000(Lcom/miui/home/launcher/Folder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    iget-object p1, p1, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1}, Lcom/miui/home/launcher/Folder;->access$100(Lcom/miui/home/launcher/Folder;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/Folder;->access$202(Lcom/miui/home/launcher/Folder;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/miui/home/launcher/Folder$2;->this$0:Lcom/miui/home/launcher/Folder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Folder;->access$202(Lcom/miui/home/launcher/Folder;Z)Z

    return-void
.end method
