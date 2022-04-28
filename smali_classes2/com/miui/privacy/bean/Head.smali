.class public Lcom/miui/privacy/bean/Head;
.super Ljava/lang/Object;
.source "Head.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private code:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private server:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private time:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTime()Ljava/lang/Long;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->time:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/privacy/bean/Head;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->msg:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->server:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->status:Ljava/lang/Integer;

    return-void
.end method

.method public setTime(Ljava/lang/Long;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->time:Ljava/lang/Long;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/miui/privacy/bean/Head;->version:Ljava/lang/String;

    return-void
.end method
