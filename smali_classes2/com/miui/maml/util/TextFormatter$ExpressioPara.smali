.class Lcom/miui/maml/util/TextFormatter$ExpressioPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 193
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter$ExpressioPara;->mExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter$ExpressioPara;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
