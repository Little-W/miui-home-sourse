.class public final Lkotlinx/coroutines/internal/Symbol;
.super Ljava/lang/Object;
.source "Symbol.kt"


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    return-object v0
.end method
