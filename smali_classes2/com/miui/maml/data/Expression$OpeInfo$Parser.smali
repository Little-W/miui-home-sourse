.class public Lcom/miui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move p2, v1

    .line 71
    :goto_0
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iput v1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    .line 75
    iput v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_1
    move p2, v1

    move v2, p2

    .line 78
    :goto_1
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$000()I

    move-result v3

    const/4 v4, 0x1

    if-ge p2, v3, :cond_6

    .line 79
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v3, v3, p2

    if-ne v3, v0, :cond_2

    goto :goto_3

    .line 82
    :cond_2
    invoke-static {}, Lcom/miui/maml/data/Expression$OpeInfo;->access$100()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v5, v6, :cond_5

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_5

    .line 84
    iget v2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    .line 85
    :goto_2
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v1, v3, p2

    if-eqz v2, :cond_4

    .line 88
    iput p2, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_4
    move v2, v4

    goto :goto_3

    .line 91
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v0, v3, p2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 95
    iget p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    :cond_7
    return v2
.end method

.method public getMatch()Lcom/miui/maml/data/Expression$Ope;
    .locals 2

    .line 101
    iget v0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/maml/data/Expression$Ope;->values()[Lcom/miui/maml/data/Expression$Ope;

    move-result-object v0

    iget p0, p0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method
