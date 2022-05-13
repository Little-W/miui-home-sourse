.class Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClearButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClearButton$3$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClearButton$3$1;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->access$600(Lcom/miui/home/launcher/gadget/ClearButton;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;ILjava/lang/Integer;)V
    .locals 6

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/ClearButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10026a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    int-to-long v4, p1

    .line 167
    invoke-static {v4, v5, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFormatedMemory(JZ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v4, p2

    invoke-static {v4, v5, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFormatedMemory(JZ)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100269

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p2, p2, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p2, p2, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/ClearButton;->access$400(Lcom/miui/home/launcher/gadget/ClearButton;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->access$202(Lcom/miui/home/launcher/gadget/ClearButton;I)I

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->access$500(Lcom/miui/home/launcher/gadget/ClearButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object p1, p1, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/ClearButton;->access$200(Lcom/miui/home/launcher/gadget/ClearButton;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;->this$2:Lcom/miui/home/launcher/gadget/ClearButton$3$1;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClearButton$3$1;->this$1:Lcom/miui/home/launcher/gadget/ClearButton$3;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClearButton$3;->this$0:Lcom/miui/home/launcher/gadget/ClearButton;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClearButton;->access$300(Lcom/miui/home/launcher/gadget/ClearButton;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 162
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$LdfMT65YMfIFyR4Nos97BwfWPJI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$LdfMT65YMfIFyR4Nos97BwfWPJI;-><init>(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;)V

    new-instance v1, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$uMiUFAzzaaP5_imPcahPzp1VT34;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/gadget/-$$Lambda$ClearButton$3$1$1$uMiUFAzzaaP5_imPcahPzp1VT34;-><init>(Lcom/miui/home/launcher/gadget/ClearButton$3$1$1;I)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
