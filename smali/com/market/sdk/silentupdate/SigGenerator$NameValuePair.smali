.class Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;
.super Ljava/lang/Object;
.source "SigGenerator.java"


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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/market/sdk/silentupdate/SigGenerator$NameValuePair;->value:Ljava/lang/String;

    return-void
.end method
