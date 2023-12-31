.class public final enum Lcom/google/android/filament/TextureSampler$CompareFunction;
.super Ljava/lang/Enum;
.source "TextureSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$CompareFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum ALWAYS:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum GREATER:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum LESS:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum NEVER:Lcom/google/android/filament/TextureSampler$CompareFunction;

.field public static final enum NOT_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 90
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v1, 0x0

    const-string v2, "LESS_EQUAL"

    invoke-direct {v0, v2, v1}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 94
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v2, 0x1

    const-string v3, "GREATER_EQUAL"

    invoke-direct {v0, v3, v2}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 98
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v3, 0x2

    const-string v4, "LESS"

    invoke-direct {v0, v4, v3}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 102
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v4, 0x3

    const-string v5, "GREATER"

    invoke-direct {v0, v5, v4}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 106
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v5, 0x4

    const-string v6, "EQUAL"

    invoke-direct {v0, v6, v5}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 110
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v6, 0x5

    const-string v7, "NOT_EQUAL"

    invoke-direct {v0, v7, v6}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->NOT_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 114
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v7, 0x6

    const-string v8, "ALWAYS"

    invoke-direct {v0, v8, v7}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->ALWAYS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 118
    new-instance v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/4 v8, 0x7

    const-string v9, "NEVER"

    invoke-direct {v0, v9, v8}, Lcom/google/android/filament/TextureSampler$CompareFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->NEVER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/filament/TextureSampler$CompareFunction;

    .line 86
    sget-object v9, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v9, v0, v1

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->GREATER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->NOT_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->ALWAYS:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/filament/TextureSampler$CompareFunction;->NEVER:Lcom/google/android/filament/TextureSampler$CompareFunction;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$CompareFunction;
    .locals 1

    .line 86
    const-class v0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$CompareFunction;
    .locals 1

    .line 86
    sget-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->$VALUES:[Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$CompareFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$CompareFunction;

    return-object v0
.end method
