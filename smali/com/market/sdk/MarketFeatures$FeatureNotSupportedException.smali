.class public Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;
.super Ljava/lang/Exception;
.source "MarketFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/MarketFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureNotSupportedException"
.end annotation


# instance fields
.field private mFeature:Lcom/market/sdk/MarketFeatures;


# direct methods
.method public constructor <init>(Lcom/market/sdk/MarketFeatures;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;->mFeature:Lcom/market/sdk/MarketFeatures;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/market/sdk/MarketFeatures$FeatureNotSupportedException;->mFeature:Lcom/market/sdk/MarketFeatures;

    invoke-virtual {p0}, Lcom/market/sdk/MarketFeatures;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
