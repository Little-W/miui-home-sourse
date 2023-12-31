.class public Lkotlin/internal/jdk8/JDK8PlatformImplementations;
.super Lkotlin/internal/jdk7/JDK7PlatformImplementations;
.source "JDK8PlatformImplementations.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lkotlin/internal/jdk7/JDK7PlatformImplementations;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultPlatformRandom()Lkotlin/random/Random;
    .locals 0

    .line 39
    new-instance p0, Lkotlin/random/jdk8/PlatformThreadLocalRandom;

    invoke-direct {p0}, Lkotlin/random/jdk8/PlatformThreadLocalRandom;-><init>()V

    check-cast p0, Lkotlin/random/Random;

    return-object p0
.end method
