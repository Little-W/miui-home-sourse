.class public Lcom/mi/globallauncher/config/CommercialConfigContent;
.super Ljava/lang/Object;
.source "CommercialConfigContent.java"


# instance fields
.field private gameSwitch:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switch"
    .end annotation
.end field

.field private time:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
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
.method public getGameSwitch()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->gameSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/Integer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->time:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGameSwitch(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->gameSwitch:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->time:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->gameSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigContent;->time:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
