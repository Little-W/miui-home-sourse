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

    .line 197
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 200
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon;->mMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1$1;->this$1:Lcom/miui/home/launcher/ItemIcon$1;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->access$102(Lcom/miui/home/launcher/ItemIcon;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
