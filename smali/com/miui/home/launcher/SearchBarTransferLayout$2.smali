.class Lcom/miui/home/launcher/SearchBarTransferLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarTransferLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarTransferLayout;->hideText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$600(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
