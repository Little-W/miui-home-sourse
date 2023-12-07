.class final Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelayResult"
.end annotation


# instance fields
.field private mRelayErrMsg:Ljava/lang/String;

.field private mRelayErrorCode:I

.field private mRelaySuccess:Z

.field private mRelayType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelaySuccess:Z

    iput p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelaySuccess:Z

    iput p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayErrorCode:I

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayErrMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRelayErrMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayErrMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayErrorCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayErrorCode:I

    return p0
.end method

.method public getRelayType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelayType:I

    return p0
.end method

.method public isRelaySuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->mRelaySuccess:Z

    return p0
.end method
