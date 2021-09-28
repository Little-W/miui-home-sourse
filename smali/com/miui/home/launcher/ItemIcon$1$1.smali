.class Lcom/miui/home/launcher/ItemIcon$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ItemIcon$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/ItemIcon$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ItemIcon$1;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 198
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/IconMessage;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon;->mMessage:Lcom/miui/home/launcher/IconMessage;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/IconMessage;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->access$102(Lcom/miui/home/launcher/ItemIcon;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
