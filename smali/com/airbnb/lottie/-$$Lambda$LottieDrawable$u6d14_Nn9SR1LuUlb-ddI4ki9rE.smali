.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$u6d14_Nn9SR1LuUlb-ddI4ki9rE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$u6d14_Nn9SR1LuUlb-ddI4ki9rE;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$u6d14_Nn9SR1LuUlb-ddI4ki9rE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$u6d14_Nn9SR1LuUlb-ddI4ki9rE;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$u6d14_Nn9SR1LuUlb-ddI4ki9rE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$8$LottieDrawable(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
