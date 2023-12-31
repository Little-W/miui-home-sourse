.class public final synthetic Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$hRh86VMHL0DmcbssVVyUyVNqD_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/elements/lottie/LottieScreenElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$hRh86VMHL0DmcbssVVyUyVNqD_I;->f$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/lottie/-$$Lambda$LottieScreenElement$hRh86VMHL0DmcbssVVyUyVNqD_I;->f$0:Lcom/miui/maml/elements/lottie/LottieScreenElement;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/lottie/LottieScreenElement;->lambda$load$0$LottieScreenElement(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
