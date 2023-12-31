.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;->f$0:Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;->f$0:Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$AnalyticalDataCollectorJobService$PVsqg1Y7Rft7Vk_jyGcwcJs53r0;->f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/AnalyticalDataCollectorJobService;->lambda$onStartJob$0$AnalyticalDataCollectorJobService(Landroid/app/job/JobParameters;)V

    return-void
.end method
