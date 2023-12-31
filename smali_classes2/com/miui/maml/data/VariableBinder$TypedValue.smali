.class public Lcom/miui/maml/data/VariableBinder$TypedValue;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedValue"
.end annotation


# static fields
.field public static final BITMAP:I = 0x7

.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final NUM_ARR:I = 0x8

.field public static final STRING:I = 0x2

.field public static final STR_ARR:I = 0x9

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "name"

    .line 127
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    return-void
.end method


# virtual methods
.method public isArray()Z
    .locals 1

    .line 163
    iget p0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isNumber()Z
    .locals 1

    .line 159
    iget p0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 1

    const-string p0, "string"

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string p0, "double"

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x6

    if-nez p0, :cond_9

    const-string p0, "number"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "float"

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const-string p0, "int"

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "integer"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "long"

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string p0, "bitmap"

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    const-string p0, "number[]"

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    const-string p0, "string[]"

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x9

    return p0

    :cond_7
    return v0

    :cond_8
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_9
    :goto_1
    return v0
.end method
