.class public final Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;",
            ">;"
        }
    .end annotation
.end field

.field public static singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;


# instance fields
.field public A:J

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:D

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE$a;

    invoke-direct {v0}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE$a;-><init>()V

    sput-object v0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->e:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->f:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->l:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->m:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->n:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->o:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->p:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->r:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->s:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->t:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->u:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->v:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->w:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->x:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->y:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->z:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->A:J

    return-void
.end method

.method public static access$000(Landroid/os/Parcel;)Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;
    .locals 4

    const-class v0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-direct {v1, p0}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;-><init>(Landroid/os/Parcel;)V

    sput-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    goto/16 :goto_0

    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setVersion(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setSsid(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setMpduLostRatio(D)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRetriesRatio(D)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRssi_mgmt(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setFrequency(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRadioOnTimeMs(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setCcaBusyTimeMs(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setBw(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRateMcsIdx(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setBitRateInKbps(I)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRxmpdu_be(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setTxmpdu_be(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setLostmpdu_be(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRetries_be(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRxmpdu_bk(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setTxmpdu_bk(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setLostmpdu_bk(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRetries_bk(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRxmpdu_vi(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setTxmpdu_vi(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setLostmpdu_vi(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRetries_vi(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRxmpdu_vo(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setTxmpdu_vo(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setLostmpdu_vo(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->setRetries_vo(J)V

    sget-object v1, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->singleClass:Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 2
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBitRateInKbps(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->k:I

    return-void
.end method

.method public setBw(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->i:I

    return-void
.end method

.method public setCcaBusyTimeMs(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->h:I

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->d:I

    return-void
.end method

.method public setLostmpdu_be(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->n:J

    return-void
.end method

.method public setLostmpdu_bk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->r:J

    return-void
.end method

.method public setLostmpdu_vi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->v:J

    return-void
.end method

.method public setLostmpdu_vo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->z:J

    return-void
.end method

.method public setMpduLostRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->e:D

    return-void
.end method

.method public setRadioOnTimeMs(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->g:I

    return-void
.end method

.method public setRateMcsIdx(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->j:I

    return-void
.end method

.method public setRetriesRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->f:D

    return-void
.end method

.method public setRetries_be(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->o:J

    return-void
.end method

.method public setRetries_bk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->s:J

    return-void
.end method

.method public setRetries_vi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->w:J

    return-void
.end method

.method public setRetries_vo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->A:J

    return-void
.end method

.method public setRssi_mgmt(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->c:I

    return-void
.end method

.method public setRxmpdu_be(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->l:J

    return-void
.end method

.method public setRxmpdu_bk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->p:J

    return-void
.end method

.method public setRxmpdu_vi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->t:J

    return-void
.end method

.method public setRxmpdu_vo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->x:J

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->b:Ljava/lang/String;

    return-void
.end method

.method public setTxmpdu_be(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->m:J

    return-void
.end method

.method public setTxmpdu_bk(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->q:J

    return-void
.end method

.method public setTxmpdu_vi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->u:J

    return-void
.end method

.method public setTxmpdu_vo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->y:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetLinkLayerQoE{version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ssid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rssi_mgmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mpduLostRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", retriesRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", radioOnTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ccaBusyTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rateMcsIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitRateInKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rxmpdu_be="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", txmpdu_be="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lostmpdu_be="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retries_be="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rxmpdu_bk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", txmpdu_bk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lostmpdu_bk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->r:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retries_bk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rxmpdu_vi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", txmpdu_vi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lostmpdu_vi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retries_vi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rxmpdu_vo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", txmpdu_vo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->y:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lostmpdu_vo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retries_vo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->A:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->u:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->v:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->w:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->z:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xiaomi/NetworkBoost/NetLinkLayerQoE;->A:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
