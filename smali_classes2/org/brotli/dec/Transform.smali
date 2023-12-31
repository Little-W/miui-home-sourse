.class final Lorg/brotli/dec/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field static final TRANSFORMS:[Lorg/brotli/dec/Transform;


# instance fields
.field private final prefix:[B

.field private final suffix:[B

.field private final type:Lorg/brotli/dec/WordTransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x79

    new-array v0, v0, [Lorg/brotli/dec/Transform;

    .line 53
    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v3, ""

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v4, " "

    invoke-direct {v1, v3, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_1:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v5, " the "

    invoke-direct {v1, v3, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v6, "s "

    invoke-direct {v1, v6, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v6, " of "

    invoke-direct {v1, v3, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v7, " and "

    invoke-direct {v1, v3, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_2:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_1:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v7, ", "

    invoke-direct {v1, v7, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, " in "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, " to "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "e "

    invoke-direct {v1, v8, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "\""

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v9, "."

    invoke-direct {v1, v3, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v10, "\">"

    invoke-direct {v1, v3, v2, v10}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, "\n"

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_3:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, "]"

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, " for "

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_3:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_2:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, " a "

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, " that "

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v11, ". "

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v9, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_4:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v12, " with "

    invoke-direct {v1, v3, v2, v12}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v12, "\'"

    invoke-direct {v1, v3, v2, v12}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, " from "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, " by "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_5:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_6:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v5, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_4:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, ". The "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, " on "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, " as "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, " is "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_7:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_1:Lorg/brotli/dec/WordTransformType;

    const-string v13, "ing "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, "\n\t"

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, ":"

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, "ed "

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_9:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_7:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_6:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v13, "("

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_8:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, " at "

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, "ly "

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v5, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_5:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_9:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v9, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v10}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v6, "=\""

    invoke-direct {v1, v3, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, ".com/"

    invoke-direct {v1, v14, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, " of the "

    invoke-direct {v1, v5, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v12}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v5, ". This "

    invoke-direct {v1, v3, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v5, ","

    invoke-direct {v1, v3, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v9, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, " not "

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, "er "

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v4}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, "al "

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v14, "=\'"

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "ful "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "ive "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "less "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v12}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "est "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v10}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "ize "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "\u00c2\u00a0"

    invoke-direct {v1, v8, v2, v3}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x68

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x69

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    const-string v8, "ous "

    invoke-direct {v1, v3, v2, v8}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v7}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v5}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x70

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v13}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x71

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x72

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v9}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x73

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v3, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x74

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v11}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x75

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v6}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x76

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x77

    aput-object v1, v0, v2

    new-instance v1, Lorg/brotli/dec/Transform;

    sget-object v2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    invoke-direct {v1, v4, v2, v14}, Lorg/brotli/dec/Transform;-><init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    sput-object v0, Lorg/brotli/dec/Transform;->TRANSFORMS:[Lorg/brotli/dec/Transform;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/brotli/dec/WordTransformType;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lorg/brotli/dec/Transform;->readUniBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/Transform;->prefix:[B

    .line 41
    iput-object p2, p0, Lorg/brotli/dec/Transform;->type:Lorg/brotli/dec/WordTransformType;

    .line 42
    invoke-static {p3}, Lorg/brotli/dec/Transform;->readUniBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/dec/Transform;->suffix:[B

    return-void
.end method

.method static readUniBytes(Ljava/lang/String;)[B
    .locals 3

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 47
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static transformDictionaryWord([BI[BIILorg/brotli/dec/Transform;)I
    .locals 7

    .line 182
    iget-object v0, p5, Lorg/brotli/dec/Transform;->prefix:[B

    .line 183
    array-length v1, v0

    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    .line 187
    aget-byte v3, v0, v3

    aput-byte v3, p0, v4

    move v4, v5

    move v3, v6

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p5, Lorg/brotli/dec/Transform;->type:Lorg/brotli/dec/WordTransformType;

    .line 192
    iget v1, v0, Lorg/brotli/dec/WordTransformType;->omitFirst:I

    if-le v1, p4, :cond_1

    move v1, p4

    :cond_1
    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    .line 198
    iget v1, v0, Lorg/brotli/dec/WordTransformType;->omitLast:I

    sub-int/2addr p4, v1

    move v1, p3

    move p3, p4

    :goto_1
    if-lez p3, :cond_2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 201
    aget-byte v1, p2, v1

    aput-byte v1, p0, v4

    add-int/lit8 p3, p3, -0x1

    move v4, v3

    move v1, v5

    goto :goto_1

    .line 205
    :cond_2
    sget-object p2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    if-eq v0, p2, :cond_3

    sget-object p2, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    if-ne v0, p2, :cond_8

    :cond_3
    sub-int p2, v4, p4

    .line 207
    sget-object p3, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    if-ne v0, p3, :cond_4

    const/4 p4, 0x1

    :cond_4
    :goto_2
    if-lez p4, :cond_8

    .line 211
    aget-byte p3, p0, p2

    and-int/lit16 p3, p3, 0xff

    const/16 v0, 0xc0

    if-ge p3, v0, :cond_6

    const/16 v0, 0x61

    if-lt p3, v0, :cond_5

    const/16 v0, 0x7a

    if-gt p3, v0, :cond_5

    .line 214
    aget-byte p3, p0, p2

    xor-int/lit8 p3, p3, 0x20

    int-to-byte p3, p3

    aput-byte p3, p0, p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    const/16 v0, 0xe0

    if-ge p3, v0, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 219
    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p4, p4, -0x2

    goto :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 223
    aget-byte v0, p0, p3

    xor-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 p4, p4, -0x3

    goto :goto_2

    .line 231
    :cond_8
    iget-object p2, p5, Lorg/brotli/dec/Transform;->suffix:[B

    .line 232
    array-length p3, p2

    :goto_3
    if-ge v2, p3, :cond_9

    add-int/lit8 p4, v4, 0x1

    add-int/lit8 p5, v2, 0x1

    .line 235
    aget-byte v0, p2, v2

    aput-byte v0, p0, v4

    move v4, p4

    move v2, p5

    goto :goto_3

    :cond_9
    sub-int/2addr v4, p1

    return v4
.end method
