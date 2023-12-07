.class public abstract Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgramHeader"
.end annotation


# instance fields
.field public memsz:J

.field public offset:J

.field public type:J

.field public vaddr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
