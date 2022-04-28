.class Lcom/miui/maml/util/TextFormatter$StringVarPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 208
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    .line 209
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
