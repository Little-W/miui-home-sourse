.class public Lcom/miui/maml/util/Variable;
.super Ljava/lang/Object;
.source "Variable.java"


# instance fields
.field private mObjectName:Ljava/lang/String;

.field private mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid variable name:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Variable"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getObjName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mObjectName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/maml/util/Variable;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method
