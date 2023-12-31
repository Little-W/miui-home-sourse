.class public Lcom/miui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/TextFormatter$StringVarPara;,
        Lcom/miui/maml/util/TextFormatter$ExpressioPara;,
        Lcom/miui/maml/util/TextFormatter$FormatPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lcom/miui/maml/data/Expression;

.field private mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .locals 7

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 40
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 48
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 49
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 50
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 51
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {p2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 55
    :cond_0
    iput-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 56
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 57
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 58
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 59
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {p2, p3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 64
    invoke-static {p1, p4}, Lcom/miui/maml/util/TextFormatter$FormatPara;->buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 65
    iget-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    if-eqz p1, :cond_2

    .line 66
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p5, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    .line 79
    iput-object p6, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;
    .locals 8

    const-string v0, "paras"

    .line 220
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "params"

    .line 222
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 224
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    const-string v1, "text"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "format"

    .line 225
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "textExp"

    .line 226
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    const-string v1, "formatExp"

    .line 227
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;
    .locals 8

    .line 233
    new-instance v7, Lcom/miui/maml/util/TextFormatter;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-interface {p1, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    .line 235
    invoke-interface {p1, p6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v7
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->evaluate()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 129
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format error: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public hasFormat()Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 85
    array-length v0, p1

    .line 86
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 87
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v2, v0, :cond_1

    .line 90
    array-length v0, v1

    .line 92
    :cond_1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string p1, ""

    .line 99
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-void
.end method
