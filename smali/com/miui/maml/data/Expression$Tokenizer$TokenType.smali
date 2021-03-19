.class public final enum Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 140
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 141
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR_NUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 142
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR_STR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 143
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "NUM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 144
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "STR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 145
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "OPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 146
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "FUN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 147
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET_ROUND"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    .line 148
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET_SQUARE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    const/16 v0, 0x9

    .line 139
    new-array v0, v0, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->STR:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .line 139
    const-class v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;
    .locals 1

    .line 139
    sget-object v0, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v0}, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method
