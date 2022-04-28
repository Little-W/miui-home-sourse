.class abstract Lcom/miui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/util/TextFormatter$1;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;
    .locals 2

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance p1, Lcom/miui/maml/util/TextFormatter$StringVarPara;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/util/TextFormatter$StringVarPara;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object p1

    .line 177
    :cond_0
    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "TextFormatter"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter expression:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_1
    new-instance p1, Lcom/miui/maml/util/TextFormatter$ExpressioPara;

    invoke-direct {p1, p0}, Lcom/miui/maml/util/TextFormatter$ExpressioPara;-><init>(Lcom/miui/maml/data/Expression;)V

    return-object p1
.end method

.method public static buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;
    .locals 7

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 146
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_4

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v3, :cond_1

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_1

    .line 150
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v5

    .line 153
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    :cond_1
    const/16 v5, 0x28

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x29

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v5

    .line 167
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    return-object p0
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
