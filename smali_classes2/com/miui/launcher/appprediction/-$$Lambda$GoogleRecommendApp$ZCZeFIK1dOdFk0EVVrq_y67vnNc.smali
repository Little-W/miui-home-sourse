.class public final synthetic Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$ZCZeFIK1dOdFk0EVVrq_y67vnNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/launcher/appprediction/GoogleRecommendApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$ZCZeFIK1dOdFk0EVVrq_y67vnNc;->f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/launcher/appprediction/-$$Lambda$GoogleRecommendApp$ZCZeFIK1dOdFk0EVVrq_y67vnNc;->f$0:Lcom/miui/launcher/appprediction/GoogleRecommendApp;

    invoke-virtual {p0}, Lcom/miui/launcher/appprediction/GoogleRecommendApp;->lambda$onTargetsAvailable$2$GoogleRecommendApp()V

    return-void
.end method
