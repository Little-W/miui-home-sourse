.class final Lcom/google/android/gms/internal/measurement/zzjn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzkb<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zzjj;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:[I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:Lcom/google/android/gms/internal/measurement/zzjr;

.field private final zzp:Lcom/google/android/gms/internal/measurement/zzit;

.field private final zzq:Lcom/google/android/gms/internal/measurement/zzkt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/internal/measurement/zzhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhn<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzs:Lcom/google/android/gms/internal/measurement/zzjc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzjj;ZZ[IIILcom/google/android/gms/internal/measurement/zzjr;Lcom/google/android/gms/internal/measurement/zzit;Lcom/google/android/gms/internal/measurement/zzkt;Lcom/google/android/gms/internal/measurement/zzhn;Lcom/google/android/gms/internal/measurement/zzjc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/zzjj;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/zzjr;",
            "Lcom/google/android/gms/internal/measurement/zzit;",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhn<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/measurement/zzhy;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzi:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzj:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzjj;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzk:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    iput p10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzo:Lcom/google/android/gms/internal/measurement/zzjr;

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    iput-object p14, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzg:Lcom/google/android/gms/internal/measurement/zzjj;

    iput-object p15, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    return-void
.end method

.method private final zza(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzf:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgo;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_b

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zze([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-nez v2, :cond_6

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_8

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([BII)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_8
    :goto_4
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_9
    const/4 v0, 0x1

    if-ne v5, v0, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_a
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v0, v4, 0x4

    goto :goto_9

    :pswitch_d
    const/4 v0, 0x1

    if-ne v5, v0, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v0, v4, 0x8

    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v0, v4

    :goto_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgo;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzig;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1b

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_34

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_34

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v8, :cond_34

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-ne v6, v10, :cond_4

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    goto/16 :goto_1c

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v6, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    :goto_3
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_7

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_5

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_6

    goto/16 :goto_1c

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_7
    if-nez v6, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    :goto_5
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_8

    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_34

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v2

    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zza()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v4

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    move/from16 v5, p6

    invoke-static {v5, v11, v4, v3, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzif;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzks;

    if-eqz v0, :cond_a

    iput-object v0, v1, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    :cond_a
    move v0, v2

    goto/16 :goto_1c

    :pswitch_4
    if-ne v6, v10, :cond_34

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v1, :cond_10

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_f

    if-nez v1, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BII)Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v4

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v1

    :goto_8
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v1, :cond_e

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_d

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BII)Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v4

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v6, v10, :cond_34

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;I[BIILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_6
    if-ne v6, v10, :cond_34

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v14

    const-string v1, ""

    if-nez v0, :cond_15

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v4, :cond_14

    if-nez v4, :cond_11

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v0, v4

    :goto_a
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v6, :cond_35

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v4, :cond_13

    if-nez v4, :cond_12

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v4, :cond_1c

    if-nez v4, :cond_16

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_b

    :cond_16
    add-int v6, v0, v4

    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([BII)Z

    move-result v8

    if-eqz v8, :cond_1b

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    :goto_b
    if-ge v6, v5, :cond_1a

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_1a

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz v0, :cond_19

    if-nez v0, :cond_17

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    add-int v4, v6, v0

    invoke-static {v3, v6, v4}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([BII)Z

    move-result v8

    if-eqz v8, :cond_18

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/measurement/zzig;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_b

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_1a
    move v0, v6

    goto/16 :goto_1c

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :pswitch_7
    const/4 v0, 0x0

    if-ne v6, v10, :cond_21

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v2, v1

    :goto_c
    if-ge v1, v2, :cond_1e

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    cmp-long v4, v4, v14

    if-eqz v4, :cond_1d

    move v4, v13

    goto :goto_d

    :cond_1d
    move v4, v0

    :goto_d
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Z)V

    goto :goto_c

    :cond_1e
    if-ne v1, v2, :cond_20

    :cond_1f
    move v0, v1

    goto/16 :goto_1c

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_21
    if-nez v6, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    cmp-long v4, v8, v14

    if-eqz v4, :cond_22

    move v4, v13

    goto :goto_e

    :cond_22
    move v4, v0

    :goto_e
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Z)V

    :goto_f
    if-ge v1, v5, :cond_1f

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v6, :cond_1f

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    cmp-long v4, v8, v14

    if-eqz v4, :cond_23

    move v4, v13

    goto :goto_10

    :cond_23
    move v4, v0

    :goto_10
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Z)V

    goto :goto_f

    :pswitch_8
    if-ne v6, v10, :cond_26

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_11
    if-ge v0, v1, :cond_24

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_11

    :cond_24
    if-ne v0, v1, :cond_25

    goto/16 :goto_1c

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_26
    if-ne v6, v9, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_12
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_12

    :pswitch_9
    if-ne v6, v10, :cond_29

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_13
    if-ge v0, v1, :cond_27

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_13

    :cond_27
    if-ne v0, v1, :cond_28

    goto/16 :goto_1c

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_29
    if-ne v6, v13, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_14
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_14

    :pswitch_a
    if-ne v6, v10, :cond_2a

    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    goto/16 :goto_1c

    :cond_2a
    if-nez v6, :cond_34

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_b
    if-ne v6, v10, :cond_2d

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_15
    if-ge v0, v1, :cond_2b

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    goto :goto_15

    :cond_2b
    if-ne v0, v1, :cond_2c

    goto/16 :goto_1c

    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_2d
    if-nez v6, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    :goto_16
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzix;->zza(J)V

    goto :goto_16

    :pswitch_c
    if-ne v6, v10, :cond_30

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_17
    if-ge v0, v1, :cond_2e

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_2e
    if-ne v0, v1, :cond_2f

    goto :goto_1c

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_30
    if-ne v6, v9, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_18
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_18

    :pswitch_d
    if-ne v6, v10, :cond_33

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    add-int/2addr v1, v0

    :goto_19
    if-ge v0, v1, :cond_31

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_19

    :cond_31
    if-ne v0, v1, :cond_32

    goto :goto_1c

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_33
    if-ne v6, v13, :cond_34

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_1a
    if-ge v0, v5, :cond_35

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ne v2, v4, :cond_35

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhj;->zza(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1a

    :cond_34
    :goto_1b
    move v0, v4

    :cond_35
    :goto_1c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgo;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    iget p5, p8, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    if-ltz p5, :cond_7

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_7

    add-int/2addr p5, p3

    iget-object p6, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzb:Ljava/lang/Object;

    iget-object p7, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzd:Ljava/lang/Object;

    :goto_0
    if-ge p3, p5, :cond_5

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    invoke-static {p3, p2, v0, p8}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget p3, p8, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    :cond_1
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:Lcom/google/android/gms/internal/measurement/zzlg;

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/zzja;->zzd:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza([BIILcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    iget-object p7, p8, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzja;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzja;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza([BIILcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    iget-object p6, p8, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p3, p2, v1, p4, p8}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p5, :cond_6

    invoke-interface {p0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private static zza([BIILcom/google/android/gms/internal/measurement/zzlg;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzlg;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjm;->zza:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzlg;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    goto :goto_3

    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_3

    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zze([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    goto :goto_3

    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjr;Lcom/google/android/gms/internal/measurement/zzit;Lcom/google/android/gms/internal/measurement/zzkt;Lcom/google/android/gms/internal/measurement/zzhn;Lcom/google/android/gms/internal/measurement/zzjc;)Lcom/google/android/gms/internal/measurement/zzjn;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            "Lcom/google/android/gms/internal/measurement/zzjr;",
            "Lcom/google/android/gms/internal/measurement/zzit;",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhn<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzjc;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzjn<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjz;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/measurement/zzju;->zzb:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    move v5, v4

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    move v7, v4

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    goto :goto_3

    :cond_4
    move v10, v5

    :goto_3
    if-nez v7, :cond_5

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzjn;->zza:[I

    move v7, v3

    move v9, v7

    move v12, v9

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move-object v15, v5

    move/from16 v5, v16

    goto/16 :goto_11

    :cond_5
    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v5, v9

    or-int/2addr v5, v7

    goto :goto_5

    :cond_7
    move v10, v5

    move v5, v7

    :goto_5
    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_6
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0xd

    move v7, v12

    goto :goto_6

    :cond_8
    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    goto :goto_7

    :cond_9
    move v12, v7

    :goto_7
    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_8
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v10, v7

    add-int/lit8 v12, v12, 0xd

    move v7, v13

    goto :goto_8

    :cond_a
    shl-int/2addr v7, v12

    or-int/2addr v7, v10

    move v10, v7

    goto :goto_9

    :cond_b
    move v13, v7

    :goto_9
    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_a
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_c

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v13

    or-int/2addr v12, v7

    add-int/lit8 v13, v13, 0xd

    move v7, v14

    goto :goto_a

    :cond_c
    shl-int/2addr v7, v13

    or-int/2addr v7, v12

    move v12, v7

    goto :goto_b

    :cond_d
    move v14, v7

    :goto_b
    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_c
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_e

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v14

    or-int/2addr v13, v7

    add-int/lit8 v14, v14, 0xd

    move v7, v15

    goto :goto_c

    :cond_e
    shl-int/2addr v7, v14

    or-int/2addr v7, v13

    move v13, v7

    goto :goto_d

    :cond_f
    move v15, v7

    :goto_d
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_e
    add-int/lit8 v16, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_10

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    add-int/lit8 v15, v15, 0xd

    move/from16 v7, v16

    goto :goto_e

    :cond_10
    shl-int/2addr v7, v15

    or-int/2addr v7, v14

    move v14, v7

    move/from16 v7, v16

    :cond_11
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_13

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_f
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_f

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v32, v16

    move/from16 v16, v15

    move/from16 v15, v32

    :goto_10
    add-int/lit8 v18, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_10

    :cond_14
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v16, v18

    :cond_15
    add-int v17, v15, v14

    add-int v7, v17, v7

    new-array v7, v7, [I

    shl-int/lit8 v17, v5, 0x1

    add-int v9, v17, v9

    move/from16 v32, v16

    move/from16 v16, v5

    move v5, v14

    move v14, v15

    move-object v15, v7

    move v7, v9

    move v9, v10

    move/from16 v10, v32

    :goto_11
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zze()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzc()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v6, v13, 0x3

    new-array v6, v6, [I

    shl-int/2addr v13, v4

    new-array v13, v13, [Ljava/lang/Object;

    add-int v19, v14, v5

    move/from16 v21, v14

    move/from16 v22, v19

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_12
    if-ge v10, v2, :cond_33

    add-int/lit8 v23, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v4, 0xd800

    if-lt v10, v4, :cond_17

    and-int/lit16 v10, v10, 0x1fff

    const/16 v25, 0xd

    move/from16 v32, v23

    move/from16 v23, v10

    move/from16 v10, v32

    :goto_13
    add-int/lit8 v26, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_16

    and-int/lit16 v4, v10, 0x1fff

    shl-int v4, v4, v25

    or-int v23, v23, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v10, v26

    const v4, 0xd800

    goto :goto_13

    :cond_16
    shl-int v4, v10, v25

    or-int v10, v23, v4

    move/from16 v4, v26

    goto :goto_14

    :cond_17
    move/from16 v4, v23

    :goto_14
    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    const/16 v26, 0xd

    move/from16 v32, v23

    move/from16 v23, v4

    move/from16 v4, v32

    :goto_15
    add-int/lit8 v27, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_18

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v26

    or-int v23, v23, v2

    add-int/lit8 v26, v26, 0xd

    move/from16 v4, v27

    const v2, 0xd800

    goto :goto_15

    :cond_18
    shl-int v2, v4, v26

    or-int v4, v23, v2

    move/from16 v2, v27

    goto :goto_16

    :cond_19
    move/from16 v2, v23

    :goto_16
    move/from16 v23, v14

    and-int/lit16 v14, v4, 0xff

    move/from16 v26, v12

    and-int/lit16 v12, v4, 0x400

    if-eqz v12, :cond_1a

    add-int/lit8 v12, v5, 0x1

    aput v20, v15, v5

    move v5, v12

    :cond_1a
    const/16 v12, 0x33

    move/from16 v29, v5

    if-lt v14, v12, :cond_22

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v5, 0xd800

    if-lt v2, v5, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v30, 0xd

    :goto_17
    add-int/lit8 v31, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_1b

    and-int/lit16 v5, v12, 0x1fff

    shl-int v5, v5, v30

    or-int/2addr v2, v5

    add-int/lit8 v30, v30, 0xd

    move/from16 v12, v31

    const v5, 0xd800

    goto :goto_17

    :cond_1b
    shl-int v5, v12, v30

    or-int/2addr v2, v5

    move/from16 v12, v31

    :cond_1c
    add-int/lit8 v5, v14, -0x33

    move/from16 v30, v12

    const/16 v12, 0x9

    if-eq v5, v12, :cond_1f

    const/16 v12, 0x11

    if-ne v5, v12, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v12, 0xc

    if-ne v5, v12, :cond_1e

    if-nez v11, :cond_1e

    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v12, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move v7, v12

    :cond_1e
    const/4 v12, 0x1

    goto :goto_19

    :cond_1f
    :goto_18
    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v24, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move/from16 v7, v24

    :goto_19
    shl-int/2addr v2, v12

    aget-object v5, v17, v2

    instance-of v12, v5, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_20

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_1a

    :cond_20
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v17, v2

    :goto_1a
    move-object v12, v6

    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v2, v2, 0x1

    aget-object v6, v17, v2

    move/from16 v27, v5

    instance-of v5, v6, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_1b

    :cond_21
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aput-object v6, v17, v2

    :goto_1b
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    move v6, v2

    move/from16 v5, v27

    move/from16 v28, v30

    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_22
    move-object v12, v6

    add-int/lit8 v5, v7, 0x1

    aget-object v6, v17, v7

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v7, 0x9

    if-eq v14, v7, :cond_2a

    const/16 v7, 0x11

    if-ne v14, v7, :cond_23

    goto :goto_1e

    :cond_23
    const/16 v7, 0x1b

    if-eq v14, v7, :cond_29

    const/16 v7, 0x31

    if-ne v14, v7, :cond_24

    goto :goto_1d

    :cond_24
    const/16 v7, 0xc

    if-eq v14, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v14, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v14, v7, :cond_25

    goto :goto_1c

    :cond_25
    const/16 v7, 0x32

    if-ne v14, v7, :cond_2b

    add-int/lit8 v7, v21, 0x1

    aput v20, v15, v21

    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v21

    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_26

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v5, v27, 0x1

    aget-object v27, v17, v27

    aput-object v27, v13, v21

    move/from16 v27, v5

    :cond_26
    move/from16 v21, v7

    goto :goto_20

    :cond_27
    :goto_1c
    if-nez v11, :cond_28

    div-int/lit8 v7, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_20

    :cond_28
    const/16 v24, 0x1

    goto :goto_1f

    :cond_29
    :goto_1d
    const/16 v24, 0x1

    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_20

    :cond_2a
    :goto_1e
    const/16 v24, 0x1

    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v13, v7

    :cond_2b
    :goto_1f
    move/from16 v27, v5

    :goto_20
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v5, v5

    and-int/lit16 v6, v4, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_2f

    const/16 v6, 0x11

    if-gt v14, v6, :cond_2f

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v7, 0xd800

    if-lt v2, v7, :cond_2d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v18, 0xd

    :goto_21
    add-int/lit8 v28, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_2c

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v18

    or-int/2addr v2, v6

    add-int/lit8 v18, v18, 0xd

    move/from16 v6, v28

    goto :goto_21

    :cond_2c
    shl-int v6, v6, v18

    or-int/2addr v2, v6

    goto :goto_22

    :cond_2d
    move/from16 v28, v6

    :goto_22
    const/4 v6, 0x1

    shl-int/lit8 v18, v16, 0x1

    div-int/lit8 v24, v2, 0x20

    add-int v18, v18, v24

    aget-object v6, v17, v18

    instance-of v7, v6, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_2e

    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_23

    :cond_2e
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aput-object v6, v17, v18

    :goto_23
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit8 v2, v2, 0x20

    goto :goto_24

    :cond_2f
    const v6, 0xfffff

    move/from16 v28, v2

    const/4 v2, 0x0

    :goto_24
    const/16 v7, 0x12

    if-lt v14, v7, :cond_30

    const/16 v7, 0x31

    if-gt v14, v7, :cond_30

    add-int/lit8 v7, v22, 0x1

    aput v5, v15, v22

    move/from16 v22, v7

    :cond_30
    move/from16 v7, v27

    :goto_25
    add-int/lit8 v18, v20, 0x1

    aput v10, v12, v20

    add-int/lit8 v10, v18, 0x1

    move-object/from16 v20, v1

    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_31

    const/high16 v1, 0x20000000

    goto :goto_26

    :cond_31
    const/4 v1, 0x0

    :goto_26
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_27

    :cond_32
    const/4 v4, 0x0

    :goto_27
    or-int/2addr v1, v4

    shl-int/lit8 v4, v14, 0x14

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v12, v18

    add-int/lit8 v1, v10, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v6

    aput v2, v12, v10

    move-object v6, v12

    move/from16 v14, v23

    move/from16 v2, v25

    move/from16 v12, v26

    move/from16 v10, v28

    move/from16 v5, v29

    const/4 v4, 0x1

    move-object/from16 v32, v20

    move/from16 v20, v1

    move-object/from16 v1, v32

    goto/16 :goto_12

    :cond_33
    move/from16 v26, v12

    move/from16 v23, v14

    move-object v12, v6

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzc()Lcom/google/android/gms/internal/measurement/zzjj;

    move-result-object v10

    const/4 v0, 0x0

    move-object v5, v1

    move-object v7, v13

    move v8, v9

    move/from16 v9, v26

    move v12, v0

    move-object v13, v15

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/measurement/zzjn;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzjj;ZZ[IIILcom/google/android/gms/internal/measurement/zzjr;Lcom/google/android/gms/internal/measurement/zzit;Lcom/google/android/gms/internal/measurement/zzkt;Lcom/google/android/gms/internal/measurement/zzhn;Lcom/google/android/gms/internal/measurement/zzjc;)V

    return-object v1

    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkm;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzju;->zzb:I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final zza(I)Lcom/google/android/gms/internal/measurement/zzkb;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    aput-object v0, p0, p1

    return-object v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/zzif;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzif;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object p0

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p4, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzja;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgp;->zzc(I)Lcom/google/android/gms/internal/measurement/zzgx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zzb()Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    :try_start_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p0, v2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzja;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgx;->zza()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p3

    invoke-virtual {p6, p5, p2, p3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzgp;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v3, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/zzif;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkt<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/measurement/zzlm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlm;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlm;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object p4

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p2, p4, p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzja;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzi:Z

    if-eqz p0, :cond_1

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result p0

    and-int p2, p0, v1

    int-to-long v0, p2

    const/high16 p2, 0xff00000

    and-int/2addr p0, p2

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzkb;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(II)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private final zzb(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    ushr-int/lit8 p0, p0, 0x14

    shl-int p0, p2, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkc;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v6, v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    move-object v11, v5

    const/4 v5, 0x0

    const v10, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v5, v6, :cond_7

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v5, 0x2

    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    move-object v14, v11

    if-eq v8, v10, :cond_1

    int-to-long v10, v8

    invoke-virtual {v7, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_2

    :cond_1
    move v8, v10

    :goto_2
    ushr-int/lit8 v9, v9, 0x14

    const/4 v10, 0x1

    shl-int v9, v10, v9

    move v10, v8

    move-object v11, v14

    goto :goto_3

    :cond_2
    move-object v14, v11

    const/4 v9, 0x0

    :goto_3
    if-eqz v11, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v15, :cond_4

    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v8, v2, v11}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v11, v8

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const v8, 0xfffff

    and-int/2addr v13, v8

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v9

    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto :goto_4

    :pswitch_1
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto :goto_4

    :pswitch_3
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto :goto_4

    :pswitch_5
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto :goto_4

    :pswitch_6
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto :goto_4

    :pswitch_7
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto :goto_4

    :pswitch_8
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v9

    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto/16 :goto_4

    :pswitch_11
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v13

    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_4

    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x1

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_4

    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_23
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_24
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_25
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_26
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_27
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_5

    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_4

    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v13

    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_4

    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_4

    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_2c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_2d
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_2e
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_2f
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_30
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_31
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto :goto_5

    :pswitch_32
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    :goto_5
    move v4, v15

    goto/16 :goto_6

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v13

    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_6

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto/16 :goto_6

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto/16 :goto_6

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto/16 :goto_6

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto/16 :goto_6

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto/16 :goto_6

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto/16 :goto_6

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v13

    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_6

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v9, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto :goto_6

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto :goto_6

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto :goto_6

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto :goto_6

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto :goto_6

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto :goto_6

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto :goto_6

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto :goto_6

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_7
    move-object v14, v11

    :goto_7
    if-eqz v14, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v4, v2, v14}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v14, v4

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzc(I)Lcom/google/android/gms/internal/measurement/zzif;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzif;

    return-object p0
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzd(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static zzd(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zze(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private static zze(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zza()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzks;->zzb()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zzb:Lcom/google/android/gms/internal/measurement/zzks;

    :cond_0
    return-object v0
.end method

.method private static zzf(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzg(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzia;->zza(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhr;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1e

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v8

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(II)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzg(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_2

    move/from16 p3, v0

    move/from16 v18, v1

    move v2, v3

    move v7, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v10

    move v6, v11

    move/from16 v17, v16

    goto/16 :goto_15

    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v4

    const v17, 0xfffff

    and-int v4, v8, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v8

    if-gt v11, v4, :cond_f

    add-int/lit8 v4, v2, 0x2

    aget v1, v1, v4

    ushr-int/lit8 v4, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v4

    const v4, 0xfffff

    and-int/2addr v1, v4

    if-eq v1, v6, :cond_4

    if-eq v6, v4, :cond_3

    int-to-long v8, v6

    invoke-virtual {v10, v14, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v1

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    move v6, v5

    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    goto/16 :goto_f

    :pswitch_0
    const/4 v5, 0x3

    if-ne v7, v5, :cond_6

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    move v9, v0

    move-object v0, v1

    const/16 v18, -0x1

    move-object/from16 v1, p2

    move v11, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v7, v19

    move/from16 v19, v4

    move v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_5

    move-object/from16 v4, p6

    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v4, p6

    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v5, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move v6, v8

    move v1, v9

    move v2, v11

    move/from16 v11, p5

    move-object v9, v4

    goto/16 :goto_0

    :cond_6
    move v9, v0

    move v11, v2

    move/from16 v7, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move/from16 p3, v8

    move v8, v7

    goto/16 :goto_f

    :pswitch_1
    move v9, v0

    move v11, v2

    move/from16 v5, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-object/from16 v4, p6

    if-nez v7, :cond_7

    move-wide v1, v12

    move-object/from16 v12, p2

    invoke-static {v12, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v7

    move-wide/from16 v20, v1

    iget-wide v0, v4, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move-object v13, v4

    move/from16 p3, v8

    move v8, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :cond_7
    move-object/from16 v12, p2

    move-object v13, v4

    move/from16 p3, v8

    move v8, v5

    goto/16 :goto_f

    :pswitch_2
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_3
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/measurement/zzks;->zza(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v6, p3

    goto/16 :goto_d

    :cond_9
    :goto_5
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_4
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zze([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_b

    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v12, v3, v2, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_a

    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    move/from16 v2, p4

    goto/16 :goto_f

    :pswitch_6
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    move/from16 v2, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_c

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    goto :goto_6

    :cond_c
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    :goto_6
    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_7
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v2, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move v3, v0

    iget-wide v0, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    const-wide/16 v20, 0x0

    cmp-long v0, v0, v20

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v16

    :goto_7
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JZ)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v3

    goto :goto_9

    :pswitch_8
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v2, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v1, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    :goto_8
    or-int v5, v6, v22

    move/from16 v6, p3

    :goto_9
    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    goto/16 :goto_e

    :pswitch_9
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/4 v0, 0x1

    const/16 v18, -0x1

    move/from16 v2, p4

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_b

    :pswitch_a
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_b
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v7, :cond_e

    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v7

    iget-wide v2, v13, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v7

    goto :goto_c

    :pswitch_c
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v1, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_b

    :pswitch_d
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    const/4 v0, 0x1

    const/16 v18, -0x1

    move/from16 v19, v4

    move-wide v4, v12

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v7, v0, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_b
    or-int v5, v6, v22

    move/from16 v6, p3

    :goto_c
    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    :goto_d
    move/from16 v13, p4

    :goto_e
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    :goto_f
    move/from16 v23, p3

    move v2, v3

    move/from16 v22, v6

    move v7, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    move/from16 v17, v11

    move/from16 v6, p5

    goto/16 :goto_15

    :cond_f
    move v4, v2

    move-wide v1, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v0

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->size()I

    move-result v7

    if-nez v7, :cond_10

    const/16 v7, 0xa

    goto :goto_10

    :cond_10
    shl-int/lit8 v7, v7, 0x1

    :goto_10
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v7, v0

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move/from16 v17, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v23, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;I[BIILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move/from16 v11, p5

    move v3, v8

    move v1, v9

    move-object v9, v13

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    goto/16 :goto_12

    :cond_13
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    move/from16 v6, v20

    int-to-long v5, v6

    move-object/from16 v0, p0

    move-wide/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v20, v5

    move v5, v8

    move v6, v9

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 p3, v9

    move-object/from16 v26, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_14

    goto/16 :goto_14

    :cond_14
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v17

    move/from16 v3, v19

    :goto_11
    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    goto/16 :goto_0

    :cond_15
    move-wide/from16 v24, v1

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_17

    const/4 v0, 0x2

    if-ne v7, v0, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_14

    goto :goto_14

    :cond_16
    :goto_12
    move/from16 v6, p5

    move v2, v15

    :goto_13
    move/from16 v7, v19

    goto :goto_15

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move v8, v6

    move/from16 v6, p3

    move v9, v11

    move-wide/from16 v10, v24

    move/from16 v12, v17

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_1d

    :goto_14
    move/from16 v6, p5

    move v2, v0

    goto :goto_13

    :goto_15
    if-ne v7, v6, :cond_19

    if-nez v6, :cond_18

    goto :goto_16

    :cond_18
    const v4, 0xfffff

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v3, v7

    move/from16 v1, v22

    move/from16 v0, v23

    goto/16 :goto_19

    :cond_19
    :goto_16
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_1c

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhl;->zza()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzg:Lcom/google/android/gms/internal/measurement/zzjj;

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzgo;->zzd:Lcom/google/android/gms/internal/measurement/zzhl;

    move/from16 v10, p3

    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/measurement/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzjj;I)Lcom/google/android/gms/internal/measurement/zzhy$zzf;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzks;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v6

    move v3, v7

    move-object v15, v8

    goto :goto_18

    :cond_1a
    move-object/from16 v11, p1

    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhy$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzhr;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1b
    move-object/from16 v11, p1

    move/from16 v10, p3

    goto :goto_17

    :cond_1c
    move-object/from16 v11, p1

    move/from16 v10, p3

    move-object/from16 v9, p6

    :goto_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzks;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v2, v17

    move/from16 v5, v22

    move-object/from16 v10, v26

    move v11, v6

    move/from16 v6, v23

    goto/16 :goto_0

    :cond_1d
    move/from16 v10, p3

    move/from16 v7, v19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    :goto_18
    move v1, v10

    move/from16 v2, v17

    goto/16 :goto_11

    :cond_1e
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move/from16 v1, v22

    move/from16 v0, v23

    const v4, 0xfffff

    :goto_19
    if-eq v0, v4, :cond_1f

    int-to-long v4, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    const/4 v0, 0x0

    iget v1, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_1a
    iget v4, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge v1, v4, :cond_20

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget v4, v4, v1

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-direct {v8, v11, v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzks;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_20
    if-eqz v0, :cond_21

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-virtual {v1, v11, v0}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-nez v6, :cond_23

    move/from16 v0, p4

    if-ne v2, v0, :cond_22

    goto :goto_1b

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_23
    move/from16 v0, p4

    if-gt v2, v0, :cond_24

    if-ne v3, v6, :cond_24

    :goto_1b
    return v2

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzo:Lcom/google/android/gms/internal/measurement/zzjr;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzg:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzjy;",
            "Lcom/google/android/gms/internal/measurement/zzhl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1d

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zza()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzg(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_a

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-nez v2, :cond_4

    move-object v2, v9

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzg:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzhl;Lcom/google/android/gms/internal/measurement/zzjj;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    :cond_5
    move-object v11, v0

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzjy;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzhl;Lcom/google/android/gms/internal/measurement/zzhr;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v11

    goto :goto_0

    :cond_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzjy;)Z

    if-nez v10, :cond_7

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :cond_7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge p2, p3, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v10, :cond_15

    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_8

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzr()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzp()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    :goto_4
    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    :goto_5
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjy;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzk()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzf()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzg()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zze()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzd()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zzc(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v1

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzja;Lcom/google/android/gms/internal/measurement/zzhl;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzq(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzm(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v2

    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzif;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzl(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzq(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzm(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v2

    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzif;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzl(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzj(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzi(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_11

    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zzb(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzt()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzs()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzr()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzq()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzp()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/measurement/zzif;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    :goto_7
    and-int v1, v3, v5

    int-to-long v5, v1

    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzo()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzn()Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_14

    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjy;->zza(Lcom/google/android/gms/internal/measurement/zzkb;Lcom/google/android/gms/internal/measurement/zzhl;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjy;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzk()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzj()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzi()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzh()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzf()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzg()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zze()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->zzd()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_15
    :goto_8
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/measurement/zzii; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge p2, p3, :cond_16

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void

    :catch_0
    :try_start_4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzjy;)Z

    if-nez v10, :cond_18

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    :cond_18
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjy;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge p2, p3, :cond_19

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_19
    if-eqz v10, :cond_1a

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p2

    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge p3, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget v0, v0, p3

    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkt;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_1b
    if-eqz v10, :cond_1c

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw p2

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlm;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzlp;->zzb:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zze()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto :goto_3

    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto :goto_3

    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto :goto_3

    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzj:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzd()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v7, v7

    move-object v8, v1

    move v1, v5

    :goto_6
    if-ge v1, v7, :cond_c

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    :goto_7
    if-eqz v8, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v8, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto/16 :goto_8

    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto/16 :goto_8

    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto/16 :goto_8

    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto/16 :goto_8

    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto/16 :goto_8

    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto/16 :goto_8

    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto/16 :goto_8

    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_8

    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzf(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto/16 :goto_8

    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto/16 :goto_8

    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto/16 :goto_8

    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto/16 :goto_8

    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto/16 :goto_8

    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto/16 :goto_8

    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto/16 :goto_8

    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_8

    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_8

    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlm;Z)V

    goto/16 :goto_8

    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(IJ)V

    goto/16 :goto_8

    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(II)V

    goto/16 :goto_8

    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(IJ)V

    goto/16 :goto_8

    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(II)V

    goto/16 :goto_8

    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzb(II)V

    goto/16 :goto_8

    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zze(II)V

    goto/16 :goto_8

    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILcom/google/android/gms/internal/measurement/zzgp;)V

    goto/16 :goto_8

    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)V

    goto/16 :goto_8

    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    goto/16 :goto_8

    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IZ)V

    goto/16 :goto_8

    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(II)V

    goto :goto_8

    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzd(IJ)V

    goto :goto_8

    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(II)V

    goto :goto_8

    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(IJ)V

    goto :goto_8

    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IJ)V

    goto :goto_8

    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(IF)V

    goto :goto_8

    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlm;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v8, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Lcom/google/android/gms/internal/measurement/zzlm;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_9

    :cond_d
    move-object v8, v3

    goto :goto_9

    :cond_e
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzgo;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzgo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/measurement/zzjn;->zzj:Z

    if-eqz v0, :cond_18

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    move v7, v8

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(II)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zzg(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v25, v5

    move-object/from16 v29, v9

    move/from16 v19, v10

    move/from16 v20, v16

    goto/16 :goto_f

    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v10, v18, 0x14

    move/from16 p3, v5

    and-int v5, v1, v8

    move-object/from16 v18, v9

    int-to-long v8, v5

    const/16 v5, 0x11

    move/from16 v21, v1

    if-gt v10, v5, :cond_c

    add-int/lit8 v5, v2, 0x2

    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v1, 0x1

    shl-int v23, v1, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    move/from16 v20, v2

    if-eq v0, v7, :cond_5

    if-eq v7, v5, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v18

    :goto_3
    if-eq v0, v5, :cond_4

    int-to-long v1, v0

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_4
    move-object v2, v7

    move v7, v0

    goto :goto_4

    :cond_5
    move-object/from16 v2, v18

    :goto_4
    const/4 v0, 0x5

    packed-switch v10, :pswitch_data_0

    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move v5, v4

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    goto/16 :goto_9

    :pswitch_0
    if-nez v3, :cond_6

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v10

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(J)J

    move-result-wide v17

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v4, v2

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    move-wide v2, v8

    move/from16 v25, p3

    move-object v8, v4

    move/from16 v26, v5

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v8

    move v0, v10

    goto/16 :goto_b

    :cond_6
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    move-object v10, v2

    goto/16 :goto_7

    :pswitch_1
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhb;->zze(I)I

    move-result v1

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    const/4 v0, 0x2

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zze([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    const/4 v0, 0x2

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_a

    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    invoke-static {v0, v12, v4, v13, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;[BIILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_7
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzia;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    const/4 v0, 0x2

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_a

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_8

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    goto :goto_5

    :cond_8
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    :goto_5
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_a

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    move/from16 v1, v16

    :goto_6
    invoke-static {v14, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JZ)V

    goto/16 :goto_8

    :pswitch_7
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_8

    :pswitch_8
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    const/4 v0, 0x1

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_8

    :cond_a
    :goto_7
    move v5, v4

    goto/16 :goto_9

    :pswitch_9
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move v5, v4

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zza([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_a
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move v5, v4

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgl;->zzb([BILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/zzgo;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v0, v17

    goto/16 :goto_b

    :pswitch_b
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    move v5, v4

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_8

    :pswitch_c
    move/from16 v25, p3

    move-object v10, v2

    move/from16 v26, v5

    const/4 v0, 0x1

    move v5, v4

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    :goto_8
    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    goto/16 :goto_b

    :cond_b
    :goto_9
    move v2, v5

    move-object/from16 v29, v10

    const/16 v19, -0x1

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    goto/16 :goto_f

    :cond_c
    move/from16 v25, p3

    move v5, v4

    move/from16 v20, v7

    move-object/from16 v4, v18

    const v26, 0xfffff

    move v7, v2

    const/16 v0, 0x1b

    if-ne v10, v0, :cond_10

    const/4 v0, 0x2

    if-ne v3, v0, :cond_f

    invoke-virtual {v4, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzig;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_a

    :cond_d
    shl-int/lit8 v1, v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    invoke-virtual {v4, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v8, v0

    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move-object/from16 v18, v4

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzkb;I[BIILcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move v2, v7

    move v6, v8

    move-object/from16 v9, v18

    :goto_b
    move/from16 v7, v20

    move/from16 v1, v25

    move/from16 v8, v26

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v29, v4

    move v15, v5

    move/from16 v27, v6

    move/from16 v28, v20

    const/16 v19, -0x1

    move/from16 v20, v7

    goto/16 :goto_c

    :cond_10
    move-object/from16 v18, v4

    const/16 v0, 0x31

    if-gt v10, v0, :cond_12

    move/from16 v1, v21

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v3, v5

    move/from16 p3, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v25

    move/from16 v28, v20

    move/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v23, v8

    move/from16 v9, v26

    move/from16 v8, v20

    move-object/from16 v29, v18

    const/16 v19, -0x1

    move/from16 v18, v10

    move-wide/from16 v9, v21

    move/from16 v11, v18

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_11

    goto/16 :goto_e

    :cond_11
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v19

    move/from16 v2, v20

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_10

    :cond_12
    move/from16 p3, v3

    move v15, v5

    move/from16 v27, v6

    move-wide/from16 v23, v8

    move-object/from16 v29, v18

    move/from16 v28, v20

    move/from16 v1, v21

    const/16 v19, -0x1

    move/from16 v20, v7

    move/from16 v18, v10

    const/16 v0, 0x32

    move/from16 v9, v18

    if-ne v9, v0, :cond_14

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_11

    goto :goto_e

    :cond_13
    :goto_c
    move v2, v15

    :goto_d
    move/from16 v6, v27

    move/from16 v7, v28

    goto :goto_f

    :cond_14
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v25

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    if-ne v0, v15, :cond_11

    :goto_e
    move v2, v0

    goto :goto_d

    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(I[BIILcom/google/android/gms/internal/measurement/zzks;Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v10, v19

    move/from16 v2, v20

    move/from16 v1, v25

    :goto_10
    move-object/from16 v9, v29

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_15
    move/from16 v27, v6

    move v1, v8

    move-object/from16 v29, v9

    if-eq v7, v1, :cond_16

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v27

    move-object/from16 v4, v29

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzg()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzgo;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjn;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    move v3, v1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzhr;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzj:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    move v12, v11

    move v13, v12

    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzhs;->zza:Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzhs;->zzb:Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhs;->zza()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhi;->zzj(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzk(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v3

    goto/16 :goto_2

    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IZ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IF)I

    move-result v3

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ID)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto :goto_1

    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    goto :goto_1

    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v6

    :goto_1
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_2

    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto :goto_2

    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v3

    :goto_2
    add-int/2addr v13, v3

    goto/16 :goto_3

    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto :goto_2

    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(IJ)I

    move-result v3

    goto :goto_2

    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(II)I

    move-result v3

    goto :goto_2

    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(IJ)I

    move-result v3

    goto :goto_2

    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhi;->zzj(II)I

    move-result v3

    goto :goto_2

    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzk(II)I

    move-result v3

    goto :goto_2

    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result v3

    goto :goto_2

    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v3

    goto :goto_2

    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v3

    goto/16 :goto_2

    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IZ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd(IJ)I

    move-result v3

    goto/16 :goto_2

    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IF)I

    move-result v3

    goto/16 :goto_2

    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ID)I

    move-result v3

    goto/16 :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v13, v0

    return v13

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    move v6, v7

    move v3, v11

    move v5, v3

    move v12, v5

    :goto_4
    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v13, v13

    if-ge v3, v13, :cond_d

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_7

    add-int/lit8 v11, v3, 0x2

    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v8, v11

    if-eq v14, v6, :cond_6

    int-to-long v8, v14

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_5

    :cond_6
    move v14, v6

    :goto_5
    move v6, v14

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzj(II)I

    move-result v8

    goto/16 :goto_e

    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzk(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v8, :cond_8

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v4

    goto/16 :goto_a

    :cond_8
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IZ)I

    move-result v8

    goto/16 :goto_e

    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(II)I

    move-result v8

    goto/16 :goto_e

    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(II)I

    move-result v4

    goto/16 :goto_a

    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjn;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd(IJ)I

    move-result v4

    goto/16 :goto_a

    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IF)I

    move-result v8

    goto/16 :goto_e

    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ID)I

    move-result v4

    goto/16 :goto_a

    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto/16 :goto_7

    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto :goto_7

    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto :goto_7

    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto :goto_7

    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto :goto_7

    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    goto :goto_7

    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(I)I

    move-result v9

    :goto_7
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_e

    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_8

    :pswitch_68
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_8

    :pswitch_69
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_8

    :pswitch_6a
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_8

    :pswitch_6b
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzd(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_8

    :pswitch_6c
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzf(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;)I

    move-result v4

    goto :goto_a

    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzj(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_71
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_72
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_73
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_74
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzb(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_75
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/util/List;Z)I

    move-result v4

    goto :goto_8

    :pswitch_76
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(ILjava/util/List;Z)I

    move-result v4

    :goto_8
    add-int/2addr v5, v4

    const/4 v4, 0x1

    :cond_9
    :goto_9
    const-wide/16 v7, 0x0

    goto :goto_d

    :pswitch_77
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzi(ILjava/util/List;Z)I

    move-result v4

    :goto_a
    add-int/2addr v5, v4

    :cond_a
    :goto_b
    const/4 v4, 0x1

    :goto_c
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_d
    const-wide/16 v13, 0x0

    goto/16 :goto_11

    :pswitch_78
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto :goto_a

    :pswitch_79
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7a
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(II)I

    move-result v4

    goto :goto_a

    :pswitch_7b
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(IJ)I

    move-result v4

    goto :goto_a

    :pswitch_7c
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzj(II)I

    move-result v8

    :goto_e
    add-int/2addr v5, v8

    goto :goto_b

    :pswitch_7d
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzk(II)I

    move-result v4

    goto :goto_a

    :pswitch_7e
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(II)I

    move-result v4

    goto :goto_a

    :pswitch_7f
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v4

    goto :goto_a

    :pswitch_80
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkb;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_81
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lcom/google/android/gms/internal/measurement/zzgp;

    if-eqz v8, :cond_b

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc(ILcom/google/android/gms/internal/measurement/zzgp;)I

    move-result v4

    goto/16 :goto_a

    :cond_b
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    :pswitch_82
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_c

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v11

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_9

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v11

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_c

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(IJ)I

    move-result v8

    goto :goto_f

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(II)I

    move-result v8

    goto :goto_f

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zze(IJ)I

    move-result v8

    goto :goto_f

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd(IJ)I

    move-result v8

    :goto_f
    add-int/2addr v5, v8

    goto :goto_10

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(IF)I

    move-result v9

    add-int/2addr v5, v9

    :cond_c
    :goto_10
    const-wide/16 v7, 0x0

    goto :goto_11

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v11

    if-eqz v9, :cond_c

    const-wide/16 v7, 0x0

    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhi;->zzb(ID)I

    move-result v11

    add-int/2addr v5, v11

    :goto_11
    add-int/lit8 v3, v3, 0x3

    move v8, v4

    move v11, v10

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    goto/16 :goto_4

    :cond_d
    move v10, v11

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v2, :cond_10

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    move v1, v10

    :goto_12
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc()I

    move-result v2

    if-ge v10, v2, :cond_e

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzht;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Lcom/google/android/gms/internal/measurement/zzht;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_e
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzht;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Lcom/google/android/gms/internal/measurement/zzht;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_13

    :cond_f
    add-int/2addr v5, v1

    :cond_10
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Lcom/google/android/gms/internal/measurement/zzjc;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzit;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzc(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zzd(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Lcom/google/android/gms/internal/measurement/zzkt;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->zza(Lcom/google/android/gms/internal/measurement/zzhn;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzn:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkz;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzp:Lcom/google/android/gms/internal/measurement/zzit;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzq:Lcom/google/android/gms/internal/measurement/zzkt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhn;->zzc(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzm:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_e

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzl:[I

    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    aget v13, v2, v12

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzd(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzc:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjn;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v17, v0

    goto :goto_1

    :cond_0
    move/from16 v17, v1

    :goto_1
    move/from16 v16, v3

    goto :goto_2

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    move v0, v11

    goto :goto_3

    :cond_2
    move v0, v9

    :goto_3
    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x31

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    and-int v1, v14, v8

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzb(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzs:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzja;->zzc:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza()Lcom/google/android/gms/internal/measurement/zzln;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzln;->zzi:Lcom/google/android/gms/internal/measurement/zzln;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjx;->zza()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v11, v9

    :cond_7
    if-nez v11, :cond_d

    return v9

    :cond_8
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzkb;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_9
    and-int v0, v14, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkz;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v1

    move v2, v9

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzkb;->zzd(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v11, v9

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    if-nez v11, :cond_d

    return v9

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(I)Lcom/google/android/gms/internal/measurement/zzkb;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzjn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzkb;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzh:Z

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzjn;->zzr:Lcom/google/android/gms/internal/measurement/zzhn;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzf()Z

    move-result v0

    if-nez v0, :cond_f

    return v9

    :cond_f
    return v11
.end method
