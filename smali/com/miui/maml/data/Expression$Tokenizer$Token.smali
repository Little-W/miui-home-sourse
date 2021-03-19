.class public Lcom/miui/maml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public info:Lcom/miui/maml/data/Expression$OpeInfo;

.field public op:Lcom/miui/maml/data/Expression$Ope;

.field public token:Ljava/lang/String;

.field public type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 161
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 165
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 166
    iput-object p2, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 161
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 170
    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 171
    iput-object p2, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    .line 173
    iget-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/miui/maml/data/Expression$OpeInfo;->getOpeInfo(I)Lcom/miui/maml/data/Expression$OpeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    return-void
.end method
