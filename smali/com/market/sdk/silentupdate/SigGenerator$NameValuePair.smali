.class Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/silentupdate/SigGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuePair"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->value:Ljava/lang/String;

    return-void
.end method
