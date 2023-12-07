.class public Lcom/mi/globallauncher/config/CommercialConfigData;
.super Ljava/lang/Object;


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private count:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/config/CommercialConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/config/CommercialConfigItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->items:Ljava/util/List;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->appId:Ljava/lang/String;

    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->count:Ljava/lang/Integer;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/config/CommercialConfigItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigData;->items:Ljava/util/List;

    return-void
.end method
