.class Lcom/miui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$Tokenizer$Token;,
        Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    .line 178
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;
    .locals 16

    move-object/from16 v0, p0

    .line 197
    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 200
    iget-object v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 201
    iget v3, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v8, v1

    move v9, v4

    move v1, v5

    move v4, v1

    move v6, v4

    move v7, v6

    :goto_0
    const/4 v10, 0x0

    if-ge v3, v2, :cond_19

    .line 202
    iget-object v11, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    const/16 v13, 0x28

    const/4 v14, 0x1

    if-nez v4, :cond_15

    const/16 v15, 0x23

    if-eq v11, v15, :cond_10

    const/16 v15, 0x40

    if-ne v11, v15, :cond_0

    goto/16 :goto_a

    :cond_0
    const/16 v10, 0x27

    if-ne v11, v10, :cond_4

    add-int/2addr v3, v14

    move v1, v3

    move v4, v5

    :goto_1
    if-ge v1, v2, :cond_3

    .line 222
    iget-object v6, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_1

    if-ne v6, v10, :cond_1

    goto :goto_3

    :cond_1
    const/16 v4, 0x5c

    if-ne v6, v4, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .line 227
    iput v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 228
    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\\'"

    const-string v5, "\'"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_4
    if-ne v11, v13, :cond_5

    move v4, v14

    goto/16 :goto_e

    :cond_5
    if-ne v11, v12, :cond_6

    const/4 v4, 0x2

    goto/16 :goto_e

    .line 233
    :cond_6
    invoke-static {v11}, Lcom/miui/maml/data/Expression;->access$300(C)Z

    move-result v10

    if-eqz v10, :cond_a

    add-int/lit8 v1, v3, 0x1

    .line 236
    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_7

    if-ge v1, v2, :cond_7

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    :goto_4
    if-ge v1, v2, :cond_9

    .line 241
    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$400(C)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 244
    :cond_9
    :goto_5
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 245
    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    .line 246
    :cond_a
    invoke-static {v11}, Lcom/miui/maml/data/Expression;->access$500(C)Z

    move-result v10

    if-eqz v10, :cond_d

    add-int/lit8 v1, v3, 0x1

    :goto_6
    if-ge v1, v2, :cond_c

    .line 250
    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$600(C)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 253
    :cond_c
    :goto_7
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 254
    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    .line 255
    :cond_d
    iget-object v10, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v10, v11, v14}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v10

    if-eqz v10, :cond_15

    add-int/lit8 v10, v3, 0x1

    :goto_8
    if-ge v10, v2, :cond_f

    .line 258
    iget-object v14, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    iget-object v15, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15, v5}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 261
    :cond_f
    :goto_9
    iget-object v14, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mOpeParser:Lcom/miui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v14}, Lcom/miui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lcom/miui/maml/data/Expression$Ope;

    move-result-object v14

    .line 262
    sget-object v15, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-eq v14, v15, :cond_15

    .line 263
    iput v10, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 264
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    sget-object v2, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    iget v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v14}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V

    return-object v1

    :cond_10
    :goto_a
    add-int/2addr v3, v14

    move v1, v3

    :goto_b
    if-ge v1, v2, :cond_12

    .line 208
    iget-object v4, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/miui/maml/data/Expression;->access$200(C)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    if-ne v1, v3, :cond_13

    const-string v1, "Expression"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid variable name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 215
    :cond_13
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 216
    new-instance v2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    const/16 v4, 0x23

    if-ne v11, v4, :cond_14

    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_d

    :cond_14
    sget-object v4, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    :goto_d
    iget-object v5, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_15
    :goto_e
    if-eqz v4, :cond_18

    if-nez v1, :cond_16

    packed-switch v4, :pswitch_data_0

    goto :goto_f

    :pswitch_0
    const/16 v6, 0x5d

    .line 280
    sget-object v8, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    move v7, v6

    move v6, v12

    goto :goto_f

    :pswitch_1
    const/16 v6, 0x29

    .line 275
    sget-object v8, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    move v7, v6

    move v6, v13

    :goto_f
    add-int/lit8 v9, v3, 0x1

    :cond_16
    if-ne v11, v6, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_17
    if-ne v11, v7, :cond_18

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_18

    add-int/lit8 v1, v3, 0x1

    .line 289
    iput v1, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    .line 290
    new-instance v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/miui/maml/data/Expression$Tokenizer$Token;-><init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_18
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_19
    if-eqz v1, :cond_1a

    const-string v1, "Expression"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mismatched bracket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/miui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
