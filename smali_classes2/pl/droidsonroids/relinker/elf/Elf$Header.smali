.class public abstract Lpl/droidsonroids/relinker/elf/Elf$Header;
.super Ljava/lang/Object;
.source "Elf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/relinker/elf/Elf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Header"
.end annotation


# instance fields
.field public bigEndian:Z

.field public phentsize:I

.field public phnum:I

.field public phoff:J

.field public shentsize:I

.field public shnum:I

.field public shoff:J

.field public shstrndx:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDynamicStructure(JI)Lpl/droidsonroids/relinker/elf/Elf$DynamicStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProgramHeader(J)Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSectionHeader(I)Lpl/droidsonroids/relinker/elf/Elf$SectionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
