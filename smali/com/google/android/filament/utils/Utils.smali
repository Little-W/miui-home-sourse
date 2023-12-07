.class public final Lcom/google/android/filament/utils/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/google/android/filament/utils/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/filament/utils/Utils;

    invoke-direct {v0}, Lcom/google/android/filament/utils/Utils;-><init>()V

    sput-object v0, Lcom/google/android/filament/utils/Utils;->INSTANCE:Lcom/google/android/filament/utils/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/Filament;->init()V

    const-string p0, "filament-utils-jni"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
