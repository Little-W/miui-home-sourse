.class public Lcom/miui/launcher/common/AppUsageStat;
.super Ljava/lang/Object;
.source "AppUsageStat.java"


# instance fields
.field private mLastUsedTime:J

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/launcher/common/AppUsageStat;->mPackageName:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/miui/launcher/common/AppUsageStat;->mLastUsedTime:J

    return-void
.end method


# virtual methods
.method public getLastUsedTime()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/miui/launcher/common/AppUsageStat;->mLastUsedTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/launcher/common/AppUsageStat;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setLastUsedTime(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/miui/launcher/common/AppUsageStat;->mLastUsedTime:J

    return-void
.end method
