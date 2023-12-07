.class public Lcom/google/android/filament/Texture$Usage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Usage"
.end annotation


# static fields
.field public static final COLOR_ATTACHMENT:I = 0x1

.field public static final DEFAULT:I = 0x18

.field public static final DEPTH_ATTACHMENT:I = 0x2

.field public static final SAMPLEABLE:I = 0x10

.field public static final STENCIL_ATTACHMENT:I = 0x4

.field public static final SUBPASS_INPUT:I = 0x20

.field public static final UPLOADABLE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
