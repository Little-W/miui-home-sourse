.class final enum Lcom/miui/maml/data/Expression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/Expression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/Expression$Ope;

.field public static final enum ADD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_AND:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_OR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum DIV:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum EQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum GT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum INVALID:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LE:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum LT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MIN:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MOD:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum MUL:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NEQ:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum NOT:Lcom/miui/maml/data/Expression$Ope;

.field public static final enum OR:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 115
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    .line 116
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "MIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    .line 117
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "MUL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->MUL:Lcom/miui/maml/data/Expression$Ope;

    .line 118
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "DIV"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->DIV:Lcom/miui/maml/data/Expression$Ope;

    .line 119
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "MOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->MOD:Lcom/miui/maml/data/Expression$Ope;

    .line 121
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_AND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_AND:Lcom/miui/maml/data/Expression$Ope;

    .line 122
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_OR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_OR:Lcom/miui/maml/data/Expression$Ope;

    .line 123
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_XOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

    .line 124
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_NOT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 125
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_LSHIFT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 126
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "BIT_RSHIFT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

    .line 128
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "NOT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->NOT:Lcom/miui/maml/data/Expression$Ope;

    .line 129
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "EQ"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->EQ:Lcom/miui/maml/data/Expression$Ope;

    .line 130
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "NEQ"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->NEQ:Lcom/miui/maml/data/Expression$Ope;

    .line 131
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "AND"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->AND:Lcom/miui/maml/data/Expression$Ope;

    .line 132
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "OR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->OR:Lcom/miui/maml/data/Expression$Ope;

    .line 133
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "GT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->GT:Lcom/miui/maml/data/Expression$Ope;

    .line 134
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "GE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->GE:Lcom/miui/maml/data/Expression$Ope;

    .line 135
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "LT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->LT:Lcom/miui/maml/data/Expression$Ope;

    .line 136
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "LE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->LE:Lcom/miui/maml/data/Expression$Ope;

    .line 138
    new-instance v0, Lcom/miui/maml/data/Expression$Ope;

    const-string v1, "INVALID"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/miui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    const/16 v0, 0x15

    .line 114
    new-array v0, v0, [Lcom/miui/maml/data/Expression$Ope;

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->ADD:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->MUL:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->DIV:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->MOD:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_AND:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_OR:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_XOR:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_NOT:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_LSHIFT:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->BIT_RSHIFT:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->NOT:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->EQ:Lcom/miui/maml/data/Expression$Ope;

    aput-object v1, v0, v14

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->NEQ:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->AND:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->OR:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->GT:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->GE:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->LT:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->LE:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/Expression$Ope;
    .locals 1

    .line 114
    const-class v0, Lcom/miui/maml/data/Expression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/Expression$Ope;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/Expression$Ope;
    .locals 1

    .line 114
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->$VALUES:[Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v0}, [Lcom/miui/maml/data/Expression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/Expression$Ope;

    return-object v0
.end method
