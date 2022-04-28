.class public Lcom/mi/globallauncher/config/CommercialConfigItem;
.super Ljava/lang/Object;
.source "CommercialConfigItem.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cid"
    .end annotation
.end field

.field private content:Lcom/mi/globallauncher/config/CommercialConfigContent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private rule:Lcom/mi/globallauncher/config/CommercialConfigItemRule;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rule"
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
.method public getCid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Lcom/mi/globallauncher/config/CommercialConfigContent;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->content:Lcom/mi/globallauncher/config/CommercialConfigContent;

    return-object v0
.end method

.method public getRule()Lcom/mi/globallauncher/config/CommercialConfigItemRule;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->rule:Lcom/mi/globallauncher/config/CommercialConfigItemRule;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->cid:Ljava/lang/String;

    return-void
.end method

.method public setContent(Lcom/mi/globallauncher/config/CommercialConfigContent;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->content:Lcom/mi/globallauncher/config/CommercialConfigContent;

    return-void
.end method

.method public setRule(Lcom/mi/globallauncher/config/CommercialConfigItemRule;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigItem;->rule:Lcom/mi/globallauncher/config/CommercialConfigItemRule;

    return-void
.end method
