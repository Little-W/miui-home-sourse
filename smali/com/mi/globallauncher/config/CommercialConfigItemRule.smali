.class public Lcom/mi/globallauncher/config/CommercialConfigItemRule;
.super Ljava/lang/Object;
.source "CommercialConfigItemRule.java"


# instance fields
.field private endTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private startTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/Long;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigItemRule;->endTime:Ljava/lang/Long;

    return-object p0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigItemRule;->startTime:Ljava/lang/Long;

    return-object p0
.end method

.method public setEndTime(Ljava/lang/Long;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigItemRule;->endTime:Ljava/lang/Long;

    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigItemRule;->startTime:Ljava/lang/Long;

    return-void
.end method
