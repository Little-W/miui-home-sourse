.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieTask$hi-nnNZnwrLnM9tiQYr399bB9h4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieTask$hi-nnNZnwrLnM9tiQYr399bB9h4;->f$0:Lcom/airbnb/lottie/LottieTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieTask$hi-nnNZnwrLnM9tiQYr399bB9h4;->f$0:Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieTask;->lambda$notifyListeners$0$LottieTask()V

    return-void
.end method
