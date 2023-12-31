.class public Lcom/google/android/filament/VertexBuffer$QuatTangentContext;
.super Ljava/lang/Object;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuatTangentContext"
.end annotation


# instance fields
.field public normals:Ljava/nio/Buffer;

.field public normalsStride:I

.field public outBuffer:Ljava/nio/Buffer;

.field public outStride:I

.field public quatCount:I

.field public quatType:Lcom/google/android/filament/VertexBuffer$QuatType;

.field public tangents:Ljava/nio/Buffer;

.field public tangentsStride:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
